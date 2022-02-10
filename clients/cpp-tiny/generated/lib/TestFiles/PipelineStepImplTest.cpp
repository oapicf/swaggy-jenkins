
#include "PipelineStepImpl.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_PipelineStepImpl__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineStepImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_PipelineStepImpl_displayName_is_assigned_from_json()
{


    bourne::json input =
    {
        "displayName", "hello"
    };

    PipelineStepImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDisplayName().c_str());






}


void test_PipelineStepImpl_durationInMillis_is_assigned_from_json()
{
    bourne::json input =
    {
        "durationInMillis", 1
    };

    PipelineStepImpl obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getDurationInMillis());








}


void test_PipelineStepImpl_id_is_assigned_from_json()
{


    bourne::json input =
    {
        "id", "hello"
    };

    PipelineStepImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getId().c_str());






}



void test_PipelineStepImpl_result_is_assigned_from_json()
{


    bourne::json input =
    {
        "result", "hello"
    };

    PipelineStepImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getResult().c_str());






}


void test_PipelineStepImpl_startTime_is_assigned_from_json()
{


    bourne::json input =
    {
        "startTime", "hello"
    };

    PipelineStepImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStartTime().c_str());






}


void test_PipelineStepImpl_state_is_assigned_from_json()
{


    bourne::json input =
    {
        "state", "hello"
    };

    PipelineStepImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getState().c_str());






}



void test_PipelineStepImpl__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineStepImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}



void test_PipelineStepImpl_displayName_is_converted_to_json()
{

    bourne::json input =
    {
        "displayName", "hello"
    };

    PipelineStepImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["displayName"] == output["displayName"]);



}


void test_PipelineStepImpl_durationInMillis_is_converted_to_json()
{
    bourne::json input =
    {
        "durationInMillis", 1
    };

    PipelineStepImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["durationInMillis"] == output["durationInMillis"]);




}


void test_PipelineStepImpl_id_is_converted_to_json()
{

    bourne::json input =
    {
        "id", "hello"
    };

    PipelineStepImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["id"] == output["id"]);



}



void test_PipelineStepImpl_result_is_converted_to_json()
{

    bourne::json input =
    {
        "result", "hello"
    };

    PipelineStepImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["result"] == output["result"]);



}


void test_PipelineStepImpl_startTime_is_converted_to_json()
{

    bourne::json input =
    {
        "startTime", "hello"
    };

    PipelineStepImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["startTime"] == output["startTime"]);



}


void test_PipelineStepImpl_state_is_converted_to_json()
{

    bourne::json input =
    {
        "state", "hello"
    };

    PipelineStepImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["state"] == output["state"]);



}


