
#include "PipelineImpl.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_PipelineImpl__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_PipelineImpl_displayName_is_assigned_from_json()
{


    bourne::json input =
    {
        "displayName", "hello"
    };

    PipelineImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDisplayName().c_str());






}


void test_PipelineImpl_estimatedDurationInMillis_is_assigned_from_json()
{
    bourne::json input =
    {
        "estimatedDurationInMillis", 1
    };

    PipelineImpl obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getEstimatedDurationInMillis());








}


void test_PipelineImpl_fullName_is_assigned_from_json()
{


    bourne::json input =
    {
        "fullName", "hello"
    };

    PipelineImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFullName().c_str());






}


void test_PipelineImpl_latestRun_is_assigned_from_json()
{


    bourne::json input =
    {
        "latestRun", "hello"
    };

    PipelineImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getLatestRun().c_str());






}


void test_PipelineImpl_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "name", "hello"
    };

    PipelineImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getName().c_str());






}


void test_PipelineImpl_organization_is_assigned_from_json()
{


    bourne::json input =
    {
        "organization", "hello"
    };

    PipelineImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getOrganization().c_str());






}


void test_PipelineImpl_weatherScore_is_assigned_from_json()
{
    bourne::json input =
    {
        "weatherScore", 1
    };

    PipelineImpl obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getWeatherScore());








}




void test_PipelineImpl__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_PipelineImpl_displayName_is_converted_to_json()
{

    bourne::json input =
    {
        "displayName", "hello"
    };

    PipelineImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["displayName"] == output["displayName"]);



}


void test_PipelineImpl_estimatedDurationInMillis_is_converted_to_json()
{
    bourne::json input =
    {
        "estimatedDurationInMillis", 1
    };

    PipelineImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["estimatedDurationInMillis"] == output["estimatedDurationInMillis"]);




}


void test_PipelineImpl_fullName_is_converted_to_json()
{

    bourne::json input =
    {
        "fullName", "hello"
    };

    PipelineImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fullName"] == output["fullName"]);



}


void test_PipelineImpl_latestRun_is_converted_to_json()
{

    bourne::json input =
    {
        "latestRun", "hello"
    };

    PipelineImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["latestRun"] == output["latestRun"]);



}


void test_PipelineImpl_name_is_converted_to_json()
{

    bourne::json input =
    {
        "name", "hello"
    };

    PipelineImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["name"] == output["name"]);



}


void test_PipelineImpl_organization_is_converted_to_json()
{

    bourne::json input =
    {
        "organization", "hello"
    };

    PipelineImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["organization"] == output["organization"]);



}


void test_PipelineImpl_weatherScore_is_converted_to_json()
{
    bourne::json input =
    {
        "weatherScore", 1
    };

    PipelineImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["weatherScore"] == output["weatherScore"]);




}



