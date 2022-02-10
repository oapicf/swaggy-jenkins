
#include "PipelineRun.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_PipelineRun__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_PipelineRun_durationInMillis_is_assigned_from_json()
{
    bourne::json input =
    {
        "durationInMillis", 1
    };

    PipelineRun obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getDurationInMillis());








}


void test_PipelineRun_estimatedDurationInMillis_is_assigned_from_json()
{
    bourne::json input =
    {
        "estimatedDurationInMillis", 1
    };

    PipelineRun obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getEstimatedDurationInMillis());








}


void test_PipelineRun_enQueueTime_is_assigned_from_json()
{


    bourne::json input =
    {
        "enQueueTime", "hello"
    };

    PipelineRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getEnQueueTime().c_str());






}


void test_PipelineRun_endTime_is_assigned_from_json()
{


    bourne::json input =
    {
        "endTime", "hello"
    };

    PipelineRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getEndTime().c_str());






}


void test_PipelineRun_id_is_assigned_from_json()
{


    bourne::json input =
    {
        "id", "hello"
    };

    PipelineRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getId().c_str());






}


void test_PipelineRun_organization_is_assigned_from_json()
{


    bourne::json input =
    {
        "organization", "hello"
    };

    PipelineRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getOrganization().c_str());






}


void test_PipelineRun_pipeline_is_assigned_from_json()
{


    bourne::json input =
    {
        "pipeline", "hello"
    };

    PipelineRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getPipeline().c_str());






}


void test_PipelineRun_result_is_assigned_from_json()
{


    bourne::json input =
    {
        "result", "hello"
    };

    PipelineRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getResult().c_str());






}


void test_PipelineRun_runSummary_is_assigned_from_json()
{


    bourne::json input =
    {
        "runSummary", "hello"
    };

    PipelineRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getRunSummary().c_str());






}


void test_PipelineRun_startTime_is_assigned_from_json()
{


    bourne::json input =
    {
        "startTime", "hello"
    };

    PipelineRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStartTime().c_str());






}


void test_PipelineRun_state_is_assigned_from_json()
{


    bourne::json input =
    {
        "state", "hello"
    };

    PipelineRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getState().c_str());






}


void test_PipelineRun_type_is_assigned_from_json()
{


    bourne::json input =
    {
        "type", "hello"
    };

    PipelineRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getType().c_str());






}


void test_PipelineRun_commitId_is_assigned_from_json()
{


    bourne::json input =
    {
        "commitId", "hello"
    };

    PipelineRun obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCommitId().c_str());






}



void test_PipelineRun__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}



void test_PipelineRun_durationInMillis_is_converted_to_json()
{
    bourne::json input =
    {
        "durationInMillis", 1
    };

    PipelineRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["durationInMillis"] == output["durationInMillis"]);




}


void test_PipelineRun_estimatedDurationInMillis_is_converted_to_json()
{
    bourne::json input =
    {
        "estimatedDurationInMillis", 1
    };

    PipelineRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["estimatedDurationInMillis"] == output["estimatedDurationInMillis"]);




}


void test_PipelineRun_enQueueTime_is_converted_to_json()
{

    bourne::json input =
    {
        "enQueueTime", "hello"
    };

    PipelineRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["enQueueTime"] == output["enQueueTime"]);



}


void test_PipelineRun_endTime_is_converted_to_json()
{

    bourne::json input =
    {
        "endTime", "hello"
    };

    PipelineRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["endTime"] == output["endTime"]);



}


void test_PipelineRun_id_is_converted_to_json()
{

    bourne::json input =
    {
        "id", "hello"
    };

    PipelineRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["id"] == output["id"]);



}


void test_PipelineRun_organization_is_converted_to_json()
{

    bourne::json input =
    {
        "organization", "hello"
    };

    PipelineRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["organization"] == output["organization"]);



}


void test_PipelineRun_pipeline_is_converted_to_json()
{

    bourne::json input =
    {
        "pipeline", "hello"
    };

    PipelineRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["pipeline"] == output["pipeline"]);



}


void test_PipelineRun_result_is_converted_to_json()
{

    bourne::json input =
    {
        "result", "hello"
    };

    PipelineRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["result"] == output["result"]);



}


void test_PipelineRun_runSummary_is_converted_to_json()
{

    bourne::json input =
    {
        "runSummary", "hello"
    };

    PipelineRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["runSummary"] == output["runSummary"]);



}


void test_PipelineRun_startTime_is_converted_to_json()
{

    bourne::json input =
    {
        "startTime", "hello"
    };

    PipelineRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["startTime"] == output["startTime"]);



}


void test_PipelineRun_state_is_converted_to_json()
{

    bourne::json input =
    {
        "state", "hello"
    };

    PipelineRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["state"] == output["state"]);



}


void test_PipelineRun_type_is_converted_to_json()
{

    bourne::json input =
    {
        "type", "hello"
    };

    PipelineRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["type"] == output["type"]);



}


void test_PipelineRun_commitId_is_converted_to_json()
{

    bourne::json input =
    {
        "commitId", "hello"
    };

    PipelineRun obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["commitId"] == output["commitId"]);



}


