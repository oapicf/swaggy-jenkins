
#include "ComputerSet.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_ComputerSet__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    ComputerSet obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_ComputerSet_busyExecutors_is_assigned_from_json()
{
    bourne::json input =
    {
        "busyExecutors", 1
    };

    ComputerSet obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getBusyExecutors());








}



void test_ComputerSet_displayName_is_assigned_from_json()
{


    bourne::json input =
    {
        "displayName", "hello"
    };

    ComputerSet obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDisplayName().c_str());






}


void test_ComputerSet_totalExecutors_is_assigned_from_json()
{
    bourne::json input =
    {
        "totalExecutors", 1
    };

    ComputerSet obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTotalExecutors());








}



void test_ComputerSet__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    ComputerSet obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_ComputerSet_busyExecutors_is_converted_to_json()
{
    bourne::json input =
    {
        "busyExecutors", 1
    };

    ComputerSet obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["busyExecutors"] == output["busyExecutors"]);




}



void test_ComputerSet_displayName_is_converted_to_json()
{

    bourne::json input =
    {
        "displayName", "hello"
    };

    ComputerSet obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["displayName"] == output["displayName"]);



}


void test_ComputerSet_totalExecutors_is_converted_to_json()
{
    bourne::json input =
    {
        "totalExecutors", 1
    };

    ComputerSet obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["totalExecutors"] == output["totalExecutors"]);




}


