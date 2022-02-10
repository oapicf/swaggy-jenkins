
#include "GenericResource.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_GenericResource__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    GenericResource obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_GenericResource_displayName_is_assigned_from_json()
{


    bourne::json input =
    {
        "displayName", "hello"
    };

    GenericResource obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDisplayName().c_str());






}


void test_GenericResource_durationInMillis_is_assigned_from_json()
{
    bourne::json input =
    {
        "durationInMillis", 1
    };

    GenericResource obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getDurationInMillis());








}


void test_GenericResource_id_is_assigned_from_json()
{


    bourne::json input =
    {
        "id", "hello"
    };

    GenericResource obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getId().c_str());






}


void test_GenericResource_result_is_assigned_from_json()
{


    bourne::json input =
    {
        "result", "hello"
    };

    GenericResource obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getResult().c_str());






}


void test_GenericResource_startTime_is_assigned_from_json()
{


    bourne::json input =
    {
        "startTime", "hello"
    };

    GenericResource obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStartTime().c_str());






}



void test_GenericResource__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    GenericResource obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_GenericResource_displayName_is_converted_to_json()
{

    bourne::json input =
    {
        "displayName", "hello"
    };

    GenericResource obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["displayName"] == output["displayName"]);



}


void test_GenericResource_durationInMillis_is_converted_to_json()
{
    bourne::json input =
    {
        "durationInMillis", 1
    };

    GenericResource obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["durationInMillis"] == output["durationInMillis"]);




}


void test_GenericResource_id_is_converted_to_json()
{

    bourne::json input =
    {
        "id", "hello"
    };

    GenericResource obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["id"] == output["id"]);



}


void test_GenericResource_result_is_converted_to_json()
{

    bourne::json input =
    {
        "result", "hello"
    };

    GenericResource obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["result"] == output["result"]);



}


void test_GenericResource_startTime_is_converted_to_json()
{

    bourne::json input =
    {
        "startTime", "hello"
    };

    GenericResource obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["startTime"] == output["startTime"]);



}


