
#include "MultibranchPipeline.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_MultibranchPipeline_displayName_is_assigned_from_json()
{


    bourne::json input =
    {
        "displayName", "hello"
    };

    MultibranchPipeline obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDisplayName().c_str());






}


void test_MultibranchPipeline_estimatedDurationInMillis_is_assigned_from_json()
{
    bourne::json input =
    {
        "estimatedDurationInMillis", 1
    };

    MultibranchPipeline obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getEstimatedDurationInMillis());








}


void test_MultibranchPipeline_latestRun_is_assigned_from_json()
{


    bourne::json input =
    {
        "latestRun", "hello"
    };

    MultibranchPipeline obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getLatestRun().c_str());






}


void test_MultibranchPipeline_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "name", "hello"
    };

    MultibranchPipeline obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getName().c_str());






}


void test_MultibranchPipeline_organization_is_assigned_from_json()
{


    bourne::json input =
    {
        "organization", "hello"
    };

    MultibranchPipeline obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getOrganization().c_str());






}


void test_MultibranchPipeline_weatherScore_is_assigned_from_json()
{
    bourne::json input =
    {
        "weatherScore", 1
    };

    MultibranchPipeline obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getWeatherScore());








}



void test_MultibranchPipeline_numberOfFailingBranches_is_assigned_from_json()
{
    bourne::json input =
    {
        "numberOfFailingBranches", 1
    };

    MultibranchPipeline obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getNumberOfFailingBranches());








}


void test_MultibranchPipeline_numberOfFailingPullRequests_is_assigned_from_json()
{
    bourne::json input =
    {
        "numberOfFailingPullRequests", 1
    };

    MultibranchPipeline obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getNumberOfFailingPullRequests());








}


void test_MultibranchPipeline_numberOfSuccessfulBranches_is_assigned_from_json()
{
    bourne::json input =
    {
        "numberOfSuccessfulBranches", 1
    };

    MultibranchPipeline obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getNumberOfSuccessfulBranches());








}


void test_MultibranchPipeline_numberOfSuccessfulPullRequests_is_assigned_from_json()
{
    bourne::json input =
    {
        "numberOfSuccessfulPullRequests", 1
    };

    MultibranchPipeline obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getNumberOfSuccessfulPullRequests());








}


void test_MultibranchPipeline_totalNumberOfBranches_is_assigned_from_json()
{
    bourne::json input =
    {
        "totalNumberOfBranches", 1
    };

    MultibranchPipeline obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTotalNumberOfBranches());








}


void test_MultibranchPipeline_totalNumberOfPullRequests_is_assigned_from_json()
{
    bourne::json input =
    {
        "totalNumberOfPullRequests", 1
    };

    MultibranchPipeline obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTotalNumberOfPullRequests());








}


void test_MultibranchPipeline__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    MultibranchPipeline obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_MultibranchPipeline_displayName_is_converted_to_json()
{

    bourne::json input =
    {
        "displayName", "hello"
    };

    MultibranchPipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["displayName"] == output["displayName"]);



}


void test_MultibranchPipeline_estimatedDurationInMillis_is_converted_to_json()
{
    bourne::json input =
    {
        "estimatedDurationInMillis", 1
    };

    MultibranchPipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["estimatedDurationInMillis"] == output["estimatedDurationInMillis"]);




}


void test_MultibranchPipeline_latestRun_is_converted_to_json()
{

    bourne::json input =
    {
        "latestRun", "hello"
    };

    MultibranchPipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["latestRun"] == output["latestRun"]);



}


void test_MultibranchPipeline_name_is_converted_to_json()
{

    bourne::json input =
    {
        "name", "hello"
    };

    MultibranchPipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["name"] == output["name"]);



}


void test_MultibranchPipeline_organization_is_converted_to_json()
{

    bourne::json input =
    {
        "organization", "hello"
    };

    MultibranchPipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["organization"] == output["organization"]);



}


void test_MultibranchPipeline_weatherScore_is_converted_to_json()
{
    bourne::json input =
    {
        "weatherScore", 1
    };

    MultibranchPipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["weatherScore"] == output["weatherScore"]);




}



void test_MultibranchPipeline_numberOfFailingBranches_is_converted_to_json()
{
    bourne::json input =
    {
        "numberOfFailingBranches", 1
    };

    MultibranchPipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["numberOfFailingBranches"] == output["numberOfFailingBranches"]);




}


void test_MultibranchPipeline_numberOfFailingPullRequests_is_converted_to_json()
{
    bourne::json input =
    {
        "numberOfFailingPullRequests", 1
    };

    MultibranchPipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["numberOfFailingPullRequests"] == output["numberOfFailingPullRequests"]);




}


void test_MultibranchPipeline_numberOfSuccessfulBranches_is_converted_to_json()
{
    bourne::json input =
    {
        "numberOfSuccessfulBranches", 1
    };

    MultibranchPipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["numberOfSuccessfulBranches"] == output["numberOfSuccessfulBranches"]);




}


void test_MultibranchPipeline_numberOfSuccessfulPullRequests_is_converted_to_json()
{
    bourne::json input =
    {
        "numberOfSuccessfulPullRequests", 1
    };

    MultibranchPipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["numberOfSuccessfulPullRequests"] == output["numberOfSuccessfulPullRequests"]);




}


void test_MultibranchPipeline_totalNumberOfBranches_is_converted_to_json()
{
    bourne::json input =
    {
        "totalNumberOfBranches", 1
    };

    MultibranchPipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["totalNumberOfBranches"] == output["totalNumberOfBranches"]);




}


void test_MultibranchPipeline_totalNumberOfPullRequests_is_converted_to_json()
{
    bourne::json input =
    {
        "totalNumberOfPullRequests", 1
    };

    MultibranchPipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["totalNumberOfPullRequests"] == output["totalNumberOfPullRequests"]);




}


void test_MultibranchPipeline__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    MultibranchPipeline obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


