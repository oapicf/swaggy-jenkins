
#include "AllView.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_AllView__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    AllView obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_AllView_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "name", "hello"
    };

    AllView obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getName().c_str());






}


void test_AllView_url_is_assigned_from_json()
{


    bourne::json input =
    {
        "url", "hello"
    };

    AllView obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getUrl().c_str());






}



void test_AllView__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    AllView obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_AllView_name_is_converted_to_json()
{

    bourne::json input =
    {
        "name", "hello"
    };

    AllView obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["name"] == output["name"]);



}


void test_AllView_url_is_converted_to_json()
{

    bourne::json input =
    {
        "url", "hello"
    };

    AllView obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["url"] == output["url"]);



}


