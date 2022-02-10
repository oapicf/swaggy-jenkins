
#include "DiskSpaceMonitorDescriptorDiskSpace.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_DiskSpaceMonitorDescriptorDiskSpace__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    DiskSpaceMonitorDescriptorDiskSpace obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_DiskSpaceMonitorDescriptorDiskSpace_timestamp_is_assigned_from_json()
{
    bourne::json input =
    {
        "timestamp", 1
    };

    DiskSpaceMonitorDescriptorDiskSpace obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTimestamp());








}


void test_DiskSpaceMonitorDescriptorDiskSpace_path_is_assigned_from_json()
{


    bourne::json input =
    {
        "path", "hello"
    };

    DiskSpaceMonitorDescriptorDiskSpace obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getPath().c_str());






}


void test_DiskSpaceMonitorDescriptorDiskSpace_size_is_assigned_from_json()
{
    bourne::json input =
    {
        "size", 1
    };

    DiskSpaceMonitorDescriptorDiskSpace obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSize());








}



void test_DiskSpaceMonitorDescriptorDiskSpace__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    DiskSpaceMonitorDescriptorDiskSpace obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_DiskSpaceMonitorDescriptorDiskSpace_timestamp_is_converted_to_json()
{
    bourne::json input =
    {
        "timestamp", 1
    };

    DiskSpaceMonitorDescriptorDiskSpace obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["timestamp"] == output["timestamp"]);




}


void test_DiskSpaceMonitorDescriptorDiskSpace_path_is_converted_to_json()
{

    bourne::json input =
    {
        "path", "hello"
    };

    DiskSpaceMonitorDescriptorDiskSpace obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["path"] == output["path"]);



}


void test_DiskSpaceMonitorDescriptorDiskSpace_size_is_converted_to_json()
{
    bourne::json input =
    {
        "size", 1
    };

    DiskSpaceMonitorDescriptorDiskSpace obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["size"] == output["size"]);




}


