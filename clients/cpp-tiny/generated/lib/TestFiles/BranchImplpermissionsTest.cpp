
#include "BranchImplpermissions.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_BranchImplpermissions_create_is_assigned_from_json()
{




    bourne::json input =
    {
        "create", true
    };

    BranchImplpermissions obj(input.dump());

    TEST_ASSERT(true == obj.isCreate());




}


void test_BranchImplpermissions_read_is_assigned_from_json()
{




    bourne::json input =
    {
        "read", true
    };

    BranchImplpermissions obj(input.dump());

    TEST_ASSERT(true == obj.isRead());




}


void test_BranchImplpermissions_start_is_assigned_from_json()
{




    bourne::json input =
    {
        "start", true
    };

    BranchImplpermissions obj(input.dump());

    TEST_ASSERT(true == obj.isStart());




}


void test_BranchImplpermissions_stop_is_assigned_from_json()
{




    bourne::json input =
    {
        "stop", true
    };

    BranchImplpermissions obj(input.dump());

    TEST_ASSERT(true == obj.isStop());




}


void test_BranchImplpermissions__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    BranchImplpermissions obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_BranchImplpermissions_create_is_converted_to_json()
{


    bourne::json input =
    {
        "create", true
    };

    BranchImplpermissions obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["create"] == output["create"]);


}


void test_BranchImplpermissions_read_is_converted_to_json()
{


    bourne::json input =
    {
        "read", true
    };

    BranchImplpermissions obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["read"] == output["read"]);


}


void test_BranchImplpermissions_start_is_converted_to_json()
{


    bourne::json input =
    {
        "start", true
    };

    BranchImplpermissions obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["start"] == output["start"]);


}


void test_BranchImplpermissions_stop_is_converted_to_json()
{


    bourne::json input =
    {
        "stop", true
    };

    BranchImplpermissions obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["stop"] == output["stop"]);


}


void test_BranchImplpermissions__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    BranchImplpermissions obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


