
#include "QueueItemImpl.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_QueueItemImpl__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    QueueItemImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_QueueItemImpl_expectedBuildNumber_is_assigned_from_json()
{
    bourne::json input =
    {
        "expectedBuildNumber", 1
    };

    QueueItemImpl obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getExpectedBuildNumber());








}


void test_QueueItemImpl_id_is_assigned_from_json()
{


    bourne::json input =
    {
        "id", "hello"
    };

    QueueItemImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getId().c_str());






}


void test_QueueItemImpl_pipeline_is_assigned_from_json()
{


    bourne::json input =
    {
        "pipeline", "hello"
    };

    QueueItemImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getPipeline().c_str());






}


void test_QueueItemImpl_queuedTime_is_assigned_from_json()
{
    bourne::json input =
    {
        "queuedTime", 1
    };

    QueueItemImpl obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getQueuedTime());








}



void test_QueueItemImpl__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    QueueItemImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_QueueItemImpl_expectedBuildNumber_is_converted_to_json()
{
    bourne::json input =
    {
        "expectedBuildNumber", 1
    };

    QueueItemImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["expectedBuildNumber"] == output["expectedBuildNumber"]);




}


void test_QueueItemImpl_id_is_converted_to_json()
{

    bourne::json input =
    {
        "id", "hello"
    };

    QueueItemImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["id"] == output["id"]);



}


void test_QueueItemImpl_pipeline_is_converted_to_json()
{

    bourne::json input =
    {
        "pipeline", "hello"
    };

    QueueItemImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["pipeline"] == output["pipeline"]);



}


void test_QueueItemImpl_queuedTime_is_converted_to_json()
{
    bourne::json input =
    {
        "queuedTime", 1
    };

    QueueItemImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["queuedTime"] == output["queuedTime"]);




}


