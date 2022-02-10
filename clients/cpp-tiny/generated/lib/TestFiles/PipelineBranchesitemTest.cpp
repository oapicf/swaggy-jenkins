
#include "PipelineBranchesitem.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_PipelineBranchesitem_displayName_is_assigned_from_json()
{


    bourne::json input =
    {
        "displayName", "hello"
    };

    PipelineBranchesitem obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDisplayName().c_str());






}


void test_PipelineBranchesitem_estimatedDurationInMillis_is_assigned_from_json()
{
    bourne::json input =
    {
        "estimatedDurationInMillis", 1
    };

    PipelineBranchesitem obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getEstimatedDurationInMillis());








}


void test_PipelineBranchesitem_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "name", "hello"
    };

    PipelineBranchesitem obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getName().c_str());






}


void test_PipelineBranchesitem_weatherScore_is_assigned_from_json()
{
    bourne::json input =
    {
        "weatherScore", 1
    };

    PipelineBranchesitem obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getWeatherScore());








}



void test_PipelineBranchesitem_organization_is_assigned_from_json()
{


    bourne::json input =
    {
        "organization", "hello"
    };

    PipelineBranchesitem obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getOrganization().c_str());






}



void test_PipelineBranchesitem_totalNumberOfPullRequests_is_assigned_from_json()
{
    bourne::json input =
    {
        "totalNumberOfPullRequests", 1
    };

    PipelineBranchesitem obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTotalNumberOfPullRequests());








}


void test_PipelineBranchesitem__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineBranchesitem obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_PipelineBranchesitem_displayName_is_converted_to_json()
{

    bourne::json input =
    {
        "displayName", "hello"
    };

    PipelineBranchesitem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["displayName"] == output["displayName"]);



}


void test_PipelineBranchesitem_estimatedDurationInMillis_is_converted_to_json()
{
    bourne::json input =
    {
        "estimatedDurationInMillis", 1
    };

    PipelineBranchesitem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["estimatedDurationInMillis"] == output["estimatedDurationInMillis"]);




}


void test_PipelineBranchesitem_name_is_converted_to_json()
{

    bourne::json input =
    {
        "name", "hello"
    };

    PipelineBranchesitem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["name"] == output["name"]);



}


void test_PipelineBranchesitem_weatherScore_is_converted_to_json()
{
    bourne::json input =
    {
        "weatherScore", 1
    };

    PipelineBranchesitem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["weatherScore"] == output["weatherScore"]);




}



void test_PipelineBranchesitem_organization_is_converted_to_json()
{

    bourne::json input =
    {
        "organization", "hello"
    };

    PipelineBranchesitem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["organization"] == output["organization"]);



}



void test_PipelineBranchesitem_totalNumberOfPullRequests_is_converted_to_json()
{
    bourne::json input =
    {
        "totalNumberOfPullRequests", 1
    };

    PipelineBranchesitem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["totalNumberOfPullRequests"] == output["totalNumberOfPullRequests"]);




}


void test_PipelineBranchesitem__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineBranchesitem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


