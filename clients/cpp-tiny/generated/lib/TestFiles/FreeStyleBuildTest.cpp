
#include "FreeStyleBuild.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_FreeStyleBuild__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    FreeStyleBuild obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_FreeStyleBuild_number_is_assigned_from_json()
{
    bourne::json input =
    {
        "number", 1
    };

    FreeStyleBuild obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getNumber());








}


void test_FreeStyleBuild_url_is_assigned_from_json()
{


    bourne::json input =
    {
        "url", "hello"
    };

    FreeStyleBuild obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getUrl().c_str());






}



void test_FreeStyleBuild_building_is_assigned_from_json()
{




    bourne::json input =
    {
        "building", true
    };

    FreeStyleBuild obj(input.dump());

    TEST_ASSERT(true == obj.isBuilding());




}


void test_FreeStyleBuild_description_is_assigned_from_json()
{


    bourne::json input =
    {
        "description", "hello"
    };

    FreeStyleBuild obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDescription().c_str());






}


void test_FreeStyleBuild_displayName_is_assigned_from_json()
{


    bourne::json input =
    {
        "displayName", "hello"
    };

    FreeStyleBuild obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDisplayName().c_str());






}


void test_FreeStyleBuild_duration_is_assigned_from_json()
{
    bourne::json input =
    {
        "duration", 1
    };

    FreeStyleBuild obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getDuration());








}


void test_FreeStyleBuild_estimatedDuration_is_assigned_from_json()
{
    bourne::json input =
    {
        "estimatedDuration", 1
    };

    FreeStyleBuild obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getEstimatedDuration());








}


void test_FreeStyleBuild_executor_is_assigned_from_json()
{


    bourne::json input =
    {
        "executor", "hello"
    };

    FreeStyleBuild obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getExecutor().c_str());






}


void test_FreeStyleBuild_fullDisplayName_is_assigned_from_json()
{


    bourne::json input =
    {
        "fullDisplayName", "hello"
    };

    FreeStyleBuild obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFullDisplayName().c_str());






}


void test_FreeStyleBuild_id_is_assigned_from_json()
{


    bourne::json input =
    {
        "id", "hello"
    };

    FreeStyleBuild obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getId().c_str());






}


void test_FreeStyleBuild_keepLog_is_assigned_from_json()
{




    bourne::json input =
    {
        "keepLog", true
    };

    FreeStyleBuild obj(input.dump());

    TEST_ASSERT(true == obj.isKeepLog());




}


void test_FreeStyleBuild_queueId_is_assigned_from_json()
{
    bourne::json input =
    {
        "queueId", 1
    };

    FreeStyleBuild obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getQueueId());








}


void test_FreeStyleBuild_result_is_assigned_from_json()
{


    bourne::json input =
    {
        "result", "hello"
    };

    FreeStyleBuild obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getResult().c_str());






}


void test_FreeStyleBuild_timestamp_is_assigned_from_json()
{
    bourne::json input =
    {
        "timestamp", 1
    };

    FreeStyleBuild obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTimestamp());








}


void test_FreeStyleBuild_builtOn_is_assigned_from_json()
{


    bourne::json input =
    {
        "builtOn", "hello"
    };

    FreeStyleBuild obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getBuiltOn().c_str());






}




void test_FreeStyleBuild__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    FreeStyleBuild obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_FreeStyleBuild_number_is_converted_to_json()
{
    bourne::json input =
    {
        "number", 1
    };

    FreeStyleBuild obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["number"] == output["number"]);




}


void test_FreeStyleBuild_url_is_converted_to_json()
{

    bourne::json input =
    {
        "url", "hello"
    };

    FreeStyleBuild obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["url"] == output["url"]);



}



void test_FreeStyleBuild_building_is_converted_to_json()
{


    bourne::json input =
    {
        "building", true
    };

    FreeStyleBuild obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["building"] == output["building"]);


}


void test_FreeStyleBuild_description_is_converted_to_json()
{

    bourne::json input =
    {
        "description", "hello"
    };

    FreeStyleBuild obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["description"] == output["description"]);



}


void test_FreeStyleBuild_displayName_is_converted_to_json()
{

    bourne::json input =
    {
        "displayName", "hello"
    };

    FreeStyleBuild obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["displayName"] == output["displayName"]);



}


void test_FreeStyleBuild_duration_is_converted_to_json()
{
    bourne::json input =
    {
        "duration", 1
    };

    FreeStyleBuild obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["duration"] == output["duration"]);




}


void test_FreeStyleBuild_estimatedDuration_is_converted_to_json()
{
    bourne::json input =
    {
        "estimatedDuration", 1
    };

    FreeStyleBuild obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["estimatedDuration"] == output["estimatedDuration"]);




}


void test_FreeStyleBuild_executor_is_converted_to_json()
{

    bourne::json input =
    {
        "executor", "hello"
    };

    FreeStyleBuild obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["executor"] == output["executor"]);



}


void test_FreeStyleBuild_fullDisplayName_is_converted_to_json()
{

    bourne::json input =
    {
        "fullDisplayName", "hello"
    };

    FreeStyleBuild obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fullDisplayName"] == output["fullDisplayName"]);



}


void test_FreeStyleBuild_id_is_converted_to_json()
{

    bourne::json input =
    {
        "id", "hello"
    };

    FreeStyleBuild obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["id"] == output["id"]);



}


void test_FreeStyleBuild_keepLog_is_converted_to_json()
{


    bourne::json input =
    {
        "keepLog", true
    };

    FreeStyleBuild obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["keepLog"] == output["keepLog"]);


}


void test_FreeStyleBuild_queueId_is_converted_to_json()
{
    bourne::json input =
    {
        "queueId", 1
    };

    FreeStyleBuild obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["queueId"] == output["queueId"]);




}


void test_FreeStyleBuild_result_is_converted_to_json()
{

    bourne::json input =
    {
        "result", "hello"
    };

    FreeStyleBuild obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["result"] == output["result"]);



}


void test_FreeStyleBuild_timestamp_is_converted_to_json()
{
    bourne::json input =
    {
        "timestamp", 1
    };

    FreeStyleBuild obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["timestamp"] == output["timestamp"]);




}


void test_FreeStyleBuild_builtOn_is_converted_to_json()
{

    bourne::json input =
    {
        "builtOn", "hello"
    };

    FreeStyleBuild obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["builtOn"] == output["builtOn"]);



}



