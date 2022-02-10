
#include "CauseUserIdCause.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_CauseUserIdCause__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    CauseUserIdCause obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_CauseUserIdCause_shortDescription_is_assigned_from_json()
{


    bourne::json input =
    {
        "shortDescription", "hello"
    };

    CauseUserIdCause obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getShortDescription().c_str());






}


void test_CauseUserIdCause_userId_is_assigned_from_json()
{


    bourne::json input =
    {
        "userId", "hello"
    };

    CauseUserIdCause obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getUserId().c_str());






}


void test_CauseUserIdCause_userName_is_assigned_from_json()
{


    bourne::json input =
    {
        "userName", "hello"
    };

    CauseUserIdCause obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getUserName().c_str());






}



void test_CauseUserIdCause__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    CauseUserIdCause obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_CauseUserIdCause_shortDescription_is_converted_to_json()
{

    bourne::json input =
    {
        "shortDescription", "hello"
    };

    CauseUserIdCause obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["shortDescription"] == output["shortDescription"]);



}


void test_CauseUserIdCause_userId_is_converted_to_json()
{

    bourne::json input =
    {
        "userId", "hello"
    };

    CauseUserIdCause obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["userId"] == output["userId"]);



}


void test_CauseUserIdCause_userName_is_converted_to_json()
{

    bourne::json input =
    {
        "userName", "hello"
    };

    CauseUserIdCause obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["userName"] == output["userName"]);



}


