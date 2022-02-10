
#include "HudsonMasterComputerexecutors.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"




void test_HudsonMasterComputerexecutors_idle_is_assigned_from_json()
{




    bourne::json input =
    {
        "idle", true
    };

    HudsonMasterComputerexecutors obj(input.dump());

    TEST_ASSERT(true == obj.isIdle());




}


void test_HudsonMasterComputerexecutors_likelyStuck_is_assigned_from_json()
{




    bourne::json input =
    {
        "likelyStuck", true
    };

    HudsonMasterComputerexecutors obj(input.dump());

    TEST_ASSERT(true == obj.isLikelyStuck());




}


void test_HudsonMasterComputerexecutors_number_is_assigned_from_json()
{
    bourne::json input =
    {
        "number", 1
    };

    HudsonMasterComputerexecutors obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getNumber());








}


void test_HudsonMasterComputerexecutors_progress_is_assigned_from_json()
{
    bourne::json input =
    {
        "progress", 1
    };

    HudsonMasterComputerexecutors obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getProgress());








}


void test_HudsonMasterComputerexecutors__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    HudsonMasterComputerexecutors obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}




void test_HudsonMasterComputerexecutors_idle_is_converted_to_json()
{


    bourne::json input =
    {
        "idle", true
    };

    HudsonMasterComputerexecutors obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["idle"] == output["idle"]);


}


void test_HudsonMasterComputerexecutors_likelyStuck_is_converted_to_json()
{


    bourne::json input =
    {
        "likelyStuck", true
    };

    HudsonMasterComputerexecutors obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["likelyStuck"] == output["likelyStuck"]);


}


void test_HudsonMasterComputerexecutors_number_is_converted_to_json()
{
    bourne::json input =
    {
        "number", 1
    };

    HudsonMasterComputerexecutors obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["number"] == output["number"]);




}


void test_HudsonMasterComputerexecutors_progress_is_converted_to_json()
{
    bourne::json input =
    {
        "progress", 1
    };

    HudsonMasterComputerexecutors obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["progress"] == output["progress"]);




}


void test_HudsonMasterComputerexecutors__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    HudsonMasterComputerexecutors obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


