
#include "ResponseTimeMonitorData.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_ResponseTimeMonitorData__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    ResponseTimeMonitorData obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_ResponseTimeMonitorData_timestamp_is_assigned_from_json()
{
    bourne::json input =
    {
        "timestamp", 1
    };

    ResponseTimeMonitorData obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTimestamp());








}


void test_ResponseTimeMonitorData_average_is_assigned_from_json()
{
    bourne::json input =
    {
        "average", 1
    };

    ResponseTimeMonitorData obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getAverage());








}



void test_ResponseTimeMonitorData__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    ResponseTimeMonitorData obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_ResponseTimeMonitorData_timestamp_is_converted_to_json()
{
    bourne::json input =
    {
        "timestamp", 1
    };

    ResponseTimeMonitorData obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["timestamp"] == output["timestamp"]);




}


void test_ResponseTimeMonitorData_average_is_converted_to_json()
{
    bourne::json input =
    {
        "average", 1
    };

    ResponseTimeMonitorData obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["average"] == output["average"]);




}


