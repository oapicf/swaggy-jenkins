
#include "InputStepImpl.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_InputStepImpl__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    InputStepImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_InputStepImpl_id_is_assigned_from_json()
{


    bourne::json input =
    {
        "id", "hello"
    };

    InputStepImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getId().c_str());






}


void test_InputStepImpl_message_is_assigned_from_json()
{


    bourne::json input =
    {
        "message", "hello"
    };

    InputStepImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getMessage().c_str());






}


void test_InputStepImpl_ok_is_assigned_from_json()
{


    bourne::json input =
    {
        "ok", "hello"
    };

    InputStepImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getOk().c_str());






}



void test_InputStepImpl_submitter_is_assigned_from_json()
{


    bourne::json input =
    {
        "submitter", "hello"
    };

    InputStepImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSubmitter().c_str());






}



void test_InputStepImpl__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    InputStepImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}



void test_InputStepImpl_id_is_converted_to_json()
{

    bourne::json input =
    {
        "id", "hello"
    };

    InputStepImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["id"] == output["id"]);



}


void test_InputStepImpl_message_is_converted_to_json()
{

    bourne::json input =
    {
        "message", "hello"
    };

    InputStepImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["message"] == output["message"]);



}


void test_InputStepImpl_ok_is_converted_to_json()
{

    bourne::json input =
    {
        "ok", "hello"
    };

    InputStepImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["ok"] == output["ok"]);



}



void test_InputStepImpl_submitter_is_converted_to_json()
{

    bourne::json input =
    {
        "submitter", "hello"
    };

    InputStepImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["submitter"] == output["submitter"]);



}


