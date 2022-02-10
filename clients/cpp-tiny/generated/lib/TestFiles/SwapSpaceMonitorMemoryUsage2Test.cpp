
#include "SwapSpaceMonitorMemoryUsage2.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_SwapSpaceMonitorMemoryUsage2__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    SwapSpaceMonitorMemoryUsage2 obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_SwapSpaceMonitorMemoryUsage2_availablePhysicalMemory_is_assigned_from_json()
{
    bourne::json input =
    {
        "availablePhysicalMemory", 1
    };

    SwapSpaceMonitorMemoryUsage2 obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getAvailablePhysicalMemory());








}


void test_SwapSpaceMonitorMemoryUsage2_availableSwapSpace_is_assigned_from_json()
{
    bourne::json input =
    {
        "availableSwapSpace", 1
    };

    SwapSpaceMonitorMemoryUsage2 obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getAvailableSwapSpace());








}


void test_SwapSpaceMonitorMemoryUsage2_totalPhysicalMemory_is_assigned_from_json()
{
    bourne::json input =
    {
        "totalPhysicalMemory", 1
    };

    SwapSpaceMonitorMemoryUsage2 obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTotalPhysicalMemory());








}


void test_SwapSpaceMonitorMemoryUsage2_totalSwapSpace_is_assigned_from_json()
{
    bourne::json input =
    {
        "totalSwapSpace", 1
    };

    SwapSpaceMonitorMemoryUsage2 obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTotalSwapSpace());








}



void test_SwapSpaceMonitorMemoryUsage2__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    SwapSpaceMonitorMemoryUsage2 obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_SwapSpaceMonitorMemoryUsage2_availablePhysicalMemory_is_converted_to_json()
{
    bourne::json input =
    {
        "availablePhysicalMemory", 1
    };

    SwapSpaceMonitorMemoryUsage2 obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["availablePhysicalMemory"] == output["availablePhysicalMemory"]);




}


void test_SwapSpaceMonitorMemoryUsage2_availableSwapSpace_is_converted_to_json()
{
    bourne::json input =
    {
        "availableSwapSpace", 1
    };

    SwapSpaceMonitorMemoryUsage2 obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["availableSwapSpace"] == output["availableSwapSpace"]);




}


void test_SwapSpaceMonitorMemoryUsage2_totalPhysicalMemory_is_converted_to_json()
{
    bourne::json input =
    {
        "totalPhysicalMemory", 1
    };

    SwapSpaceMonitorMemoryUsage2 obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["totalPhysicalMemory"] == output["totalPhysicalMemory"]);




}


void test_SwapSpaceMonitorMemoryUsage2_totalSwapSpace_is_converted_to_json()
{
    bourne::json input =
    {
        "totalSwapSpace", 1
    };

    SwapSpaceMonitorMemoryUsage2 obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["totalSwapSpace"] == output["totalSwapSpace"]);




}


