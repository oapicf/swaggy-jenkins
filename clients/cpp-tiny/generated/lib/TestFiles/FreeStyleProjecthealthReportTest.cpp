
#include "FreeStyleProjecthealthReport.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_FreeStyleProjecthealthReport_description_is_assigned_from_json()
{


    bourne::json input =
    {
        "description", "hello"
    };

    FreeStyleProjecthealthReport obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDescription().c_str());






}


void test_FreeStyleProjecthealthReport_iconClassName_is_assigned_from_json()
{


    bourne::json input =
    {
        "iconClassName", "hello"
    };

    FreeStyleProjecthealthReport obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getIconClassName().c_str());






}


void test_FreeStyleProjecthealthReport_iconUrl_is_assigned_from_json()
{


    bourne::json input =
    {
        "iconUrl", "hello"
    };

    FreeStyleProjecthealthReport obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getIconUrl().c_str());






}


void test_FreeStyleProjecthealthReport_score_is_assigned_from_json()
{
    bourne::json input =
    {
        "score", 1
    };

    FreeStyleProjecthealthReport obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getScore());








}


void test_FreeStyleProjecthealthReport__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    FreeStyleProjecthealthReport obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_FreeStyleProjecthealthReport_description_is_converted_to_json()
{

    bourne::json input =
    {
        "description", "hello"
    };

    FreeStyleProjecthealthReport obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["description"] == output["description"]);



}


void test_FreeStyleProjecthealthReport_iconClassName_is_converted_to_json()
{

    bourne::json input =
    {
        "iconClassName", "hello"
    };

    FreeStyleProjecthealthReport obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iconClassName"] == output["iconClassName"]);



}


void test_FreeStyleProjecthealthReport_iconUrl_is_converted_to_json()
{

    bourne::json input =
    {
        "iconUrl", "hello"
    };

    FreeStyleProjecthealthReport obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iconUrl"] == output["iconUrl"]);



}


void test_FreeStyleProjecthealthReport_score_is_converted_to_json()
{
    bourne::json input =
    {
        "score", 1
    };

    FreeStyleProjecthealthReport obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["score"] == output["score"]);




}


void test_FreeStyleProjecthealthReport__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    FreeStyleProjecthealthReport obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


