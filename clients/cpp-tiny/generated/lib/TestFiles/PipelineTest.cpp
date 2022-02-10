
#include "Pipeline.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Pipeline__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    Pipeline obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_Pipeline_organization_is_assigned_from_json()
{


    bourne::json input =
    {
        "organization", "hello"
    };

    Pipeline obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getOrganization().c_str());






}


void test_Pipeline_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "name", "hello"
    };

    Pipeline obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getName().c_str());






}


void test_Pipeline_displayName_is_assigned_from_json()
{


    bourne::json input =
    {
        "displayName", "hello"
    };

    Pipeline obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDisplayName().c_str());






}


void test_Pipeline_fullName_is_assigned_from_json()
{


    bourne::json input =
    {
        "fullName", "hello"
    };

    Pipeline obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFullName().c_str());






}


void test_Pipeline_weatherScore_is_assigned_from_json()
{
    bourne::json input =
    {
        "weatherScore", 1
    };

    Pipeline obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getWeatherScore());








}


void test_Pipeline_estimatedDurationInMillis_is_assigned_from_json()
{
    bourne::json input =
    {
        "estimatedDurationInMillis", 1
    };

    Pipeline obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getEstimatedDurationInMillis());








}




void test_Pipeline__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    Pipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_Pipeline_organization_is_converted_to_json()
{

    bourne::json input =
    {
        "organization", "hello"
    };

    Pipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["organization"] == output["organization"]);



}


void test_Pipeline_name_is_converted_to_json()
{

    bourne::json input =
    {
        "name", "hello"
    };

    Pipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["name"] == output["name"]);



}


void test_Pipeline_displayName_is_converted_to_json()
{

    bourne::json input =
    {
        "displayName", "hello"
    };

    Pipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["displayName"] == output["displayName"]);



}


void test_Pipeline_fullName_is_converted_to_json()
{

    bourne::json input =
    {
        "fullName", "hello"
    };

    Pipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fullName"] == output["fullName"]);



}


void test_Pipeline_weatherScore_is_converted_to_json()
{
    bourne::json input =
    {
        "weatherScore", 1
    };

    Pipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["weatherScore"] == output["weatherScore"]);




}


void test_Pipeline_estimatedDurationInMillis_is_converted_to_json()
{
    bourne::json input =
    {
        "estimatedDurationInMillis", 1
    };

    Pipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["estimatedDurationInMillis"] == output["estimatedDurationInMillis"]);




}



