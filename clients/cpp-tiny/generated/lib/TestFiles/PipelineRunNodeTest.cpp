
#include "PipelineRunNode.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_PipelineRunNode__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineRunNode obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_PipelineRunNode_displayName_is_assigned_from_json()
{


    bourne::json input =
    {
        "displayName", "hello"
    };

    PipelineRunNode obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDisplayName().c_str());






}


void test_PipelineRunNode_durationInMillis_is_assigned_from_json()
{
    bourne::json input =
    {
        "durationInMillis", 1
    };

    PipelineRunNode obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getDurationInMillis());








}



void test_PipelineRunNode_id_is_assigned_from_json()
{


    bourne::json input =
    {
        "id", "hello"
    };

    PipelineRunNode obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getId().c_str());






}


void test_PipelineRunNode_result_is_assigned_from_json()
{


    bourne::json input =
    {
        "result", "hello"
    };

    PipelineRunNode obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getResult().c_str());






}


void test_PipelineRunNode_startTime_is_assigned_from_json()
{


    bourne::json input =
    {
        "startTime", "hello"
    };

    PipelineRunNode obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStartTime().c_str());






}


void test_PipelineRunNode_state_is_assigned_from_json()
{


    bourne::json input =
    {
        "state", "hello"
    };

    PipelineRunNode obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getState().c_str());






}



void test_PipelineRunNode__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineRunNode obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_PipelineRunNode_displayName_is_converted_to_json()
{

    bourne::json input =
    {
        "displayName", "hello"
    };

    PipelineRunNode obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["displayName"] == output["displayName"]);



}


void test_PipelineRunNode_durationInMillis_is_converted_to_json()
{
    bourne::json input =
    {
        "durationInMillis", 1
    };

    PipelineRunNode obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["durationInMillis"] == output["durationInMillis"]);




}



void test_PipelineRunNode_id_is_converted_to_json()
{

    bourne::json input =
    {
        "id", "hello"
    };

    PipelineRunNode obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["id"] == output["id"]);



}


void test_PipelineRunNode_result_is_converted_to_json()
{

    bourne::json input =
    {
        "result", "hello"
    };

    PipelineRunNode obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["result"] == output["result"]);



}


void test_PipelineRunNode_startTime_is_converted_to_json()
{

    bourne::json input =
    {
        "startTime", "hello"
    };

    PipelineRunNode obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["startTime"] == output["startTime"]);



}


void test_PipelineRunNode_state_is_converted_to_json()
{

    bourne::json input =
    {
        "state", "hello"
    };

    PipelineRunNode obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["state"] == output["state"]);



}


