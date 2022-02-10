
#include "PipelinelatestRun.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"




void test_PipelinelatestRun_durationInMillis_is_assigned_from_json()
{
    bourne::json input =
    {
        "durationInMillis", 1
    };

    PipelinelatestRun obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getDurationInMillis());








}


void test_PipelinelatestRun_estimatedDurationInMillis_is_assigned_from_json()
{
    bourne::json input =
    {
        "estimatedDurationInMillis", 1
    };

    PipelinelatestRun obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getEstimatedDurationInMillis());








}


void test_PipelinelatestRun_enQueueTime_is_assigned_from_json()
{


    bourne::json input =
    {
        "enQueueTime", "hello"
    };

    PipelinelatestRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getEnQueueTime().c_str());






}


void test_PipelinelatestRun_endTime_is_assigned_from_json()
{


    bourne::json input =
    {
        "endTime", "hello"
    };

    PipelinelatestRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getEndTime().c_str());






}


void test_PipelinelatestRun_id_is_assigned_from_json()
{


    bourne::json input =
    {
        "id", "hello"
    };

    PipelinelatestRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getId().c_str());






}


void test_PipelinelatestRun_organization_is_assigned_from_json()
{


    bourne::json input =
    {
        "organization", "hello"
    };

    PipelinelatestRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getOrganization().c_str());






}


void test_PipelinelatestRun_pipeline_is_assigned_from_json()
{


    bourne::json input =
    {
        "pipeline", "hello"
    };

    PipelinelatestRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getPipeline().c_str());






}


void test_PipelinelatestRun_result_is_assigned_from_json()
{


    bourne::json input =
    {
        "result", "hello"
    };

    PipelinelatestRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getResult().c_str());






}


void test_PipelinelatestRun_runSummary_is_assigned_from_json()
{


    bourne::json input =
    {
        "runSummary", "hello"
    };

    PipelinelatestRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getRunSummary().c_str());






}


void test_PipelinelatestRun_startTime_is_assigned_from_json()
{


    bourne::json input =
    {
        "startTime", "hello"
    };

    PipelinelatestRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStartTime().c_str());






}


void test_PipelinelatestRun_state_is_assigned_from_json()
{


    bourne::json input =
    {
        "state", "hello"
    };

    PipelinelatestRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getState().c_str());






}


void test_PipelinelatestRun_type_is_assigned_from_json()
{


    bourne::json input =
    {
        "type", "hello"
    };

    PipelinelatestRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getType().c_str());






}


void test_PipelinelatestRun_commitId_is_assigned_from_json()
{


    bourne::json input =
    {
        "commitId", "hello"
    };

    PipelinelatestRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCommitId().c_str());






}


void test_PipelinelatestRun__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    PipelinelatestRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}




void test_PipelinelatestRun_durationInMillis_is_converted_to_json()
{
    bourne::json input =
    {
        "durationInMillis", 1
    };

    PipelinelatestRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["durationInMillis"] == output["durationInMillis"]);




}


void test_PipelinelatestRun_estimatedDurationInMillis_is_converted_to_json()
{
    bourne::json input =
    {
        "estimatedDurationInMillis", 1
    };

    PipelinelatestRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["estimatedDurationInMillis"] == output["estimatedDurationInMillis"]);




}


void test_PipelinelatestRun_enQueueTime_is_converted_to_json()
{

    bourne::json input =
    {
        "enQueueTime", "hello"
    };

    PipelinelatestRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["enQueueTime"] == output["enQueueTime"]);



}


void test_PipelinelatestRun_endTime_is_converted_to_json()
{

    bourne::json input =
    {
        "endTime", "hello"
    };

    PipelinelatestRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["endTime"] == output["endTime"]);



}


void test_PipelinelatestRun_id_is_converted_to_json()
{

    bourne::json input =
    {
        "id", "hello"
    };

    PipelinelatestRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["id"] == output["id"]);



}


void test_PipelinelatestRun_organization_is_converted_to_json()
{

    bourne::json input =
    {
        "organization", "hello"
    };

    PipelinelatestRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["organization"] == output["organization"]);



}


void test_PipelinelatestRun_pipeline_is_converted_to_json()
{

    bourne::json input =
    {
        "pipeline", "hello"
    };

    PipelinelatestRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["pipeline"] == output["pipeline"]);



}


void test_PipelinelatestRun_result_is_converted_to_json()
{

    bourne::json input =
    {
        "result", "hello"
    };

    PipelinelatestRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["result"] == output["result"]);



}


void test_PipelinelatestRun_runSummary_is_converted_to_json()
{

    bourne::json input =
    {
        "runSummary", "hello"
    };

    PipelinelatestRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["runSummary"] == output["runSummary"]);



}


void test_PipelinelatestRun_startTime_is_converted_to_json()
{

    bourne::json input =
    {
        "startTime", "hello"
    };

    PipelinelatestRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["startTime"] == output["startTime"]);



}


void test_PipelinelatestRun_state_is_converted_to_json()
{

    bourne::json input =
    {
        "state", "hello"
    };

    PipelinelatestRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["state"] == output["state"]);



}


void test_PipelinelatestRun_type_is_converted_to_json()
{

    bourne::json input =
    {
        "type", "hello"
    };

    PipelinelatestRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["type"] == output["type"]);



}


void test_PipelinelatestRun_commitId_is_converted_to_json()
{

    bourne::json input =
    {
        "commitId", "hello"
    };

    PipelinelatestRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["commitId"] == output["commitId"]);



}


void test_PipelinelatestRun__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    PipelinelatestRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


