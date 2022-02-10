
#include "BranchImpl.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_BranchImpl__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    BranchImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_BranchImpl_displayName_is_assigned_from_json()
{


    bourne::json input =
    {
        "displayName", "hello"
    };

    BranchImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDisplayName().c_str());






}


void test_BranchImpl_estimatedDurationInMillis_is_assigned_from_json()
{
    bourne::json input =
    {
        "estimatedDurationInMillis", 1
    };

    BranchImpl obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getEstimatedDurationInMillis());








}


void test_BranchImpl_fullDisplayName_is_assigned_from_json()
{


    bourne::json input =
    {
        "fullDisplayName", "hello"
    };

    BranchImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFullDisplayName().c_str());






}


void test_BranchImpl_fullName_is_assigned_from_json()
{


    bourne::json input =
    {
        "fullName", "hello"
    };

    BranchImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFullName().c_str());






}


void test_BranchImpl_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "name", "hello"
    };

    BranchImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getName().c_str());






}


void test_BranchImpl_organization_is_assigned_from_json()
{


    bourne::json input =
    {
        "organization", "hello"
    };

    BranchImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getOrganization().c_str());






}




void test_BranchImpl_weatherScore_is_assigned_from_json()
{
    bourne::json input =
    {
        "weatherScore", 1
    };

    BranchImpl obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getWeatherScore());








}


void test_BranchImpl_pullRequest_is_assigned_from_json()
{


    bourne::json input =
    {
        "pullRequest", "hello"
    };

    BranchImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getPullRequest().c_str());






}





void test_BranchImpl__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    BranchImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_BranchImpl_displayName_is_converted_to_json()
{

    bourne::json input =
    {
        "displayName", "hello"
    };

    BranchImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["displayName"] == output["displayName"]);



}


void test_BranchImpl_estimatedDurationInMillis_is_converted_to_json()
{
    bourne::json input =
    {
        "estimatedDurationInMillis", 1
    };

    BranchImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["estimatedDurationInMillis"] == output["estimatedDurationInMillis"]);




}


void test_BranchImpl_fullDisplayName_is_converted_to_json()
{

    bourne::json input =
    {
        "fullDisplayName", "hello"
    };

    BranchImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fullDisplayName"] == output["fullDisplayName"]);



}


void test_BranchImpl_fullName_is_converted_to_json()
{

    bourne::json input =
    {
        "fullName", "hello"
    };

    BranchImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fullName"] == output["fullName"]);



}


void test_BranchImpl_name_is_converted_to_json()
{

    bourne::json input =
    {
        "name", "hello"
    };

    BranchImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["name"] == output["name"]);



}


void test_BranchImpl_organization_is_converted_to_json()
{

    bourne::json input =
    {
        "organization", "hello"
    };

    BranchImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["organization"] == output["organization"]);



}




void test_BranchImpl_weatherScore_is_converted_to_json()
{
    bourne::json input =
    {
        "weatherScore", 1
    };

    BranchImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["weatherScore"] == output["weatherScore"]);




}


void test_BranchImpl_pullRequest_is_converted_to_json()
{

    bourne::json input =
    {
        "pullRequest", "hello"
    };

    BranchImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["pullRequest"] == output["pullRequest"]);



}




