
#include "ListView.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_ListView__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    ListView obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_ListView_description_is_assigned_from_json()
{


    bourne::json input =
    {
        "description", "hello"
    };

    ListView obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDescription().c_str());






}



void test_ListView_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "name", "hello"
    };

    ListView obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getName().c_str());






}


void test_ListView_url_is_assigned_from_json()
{


    bourne::json input =
    {
        "url", "hello"
    };

    ListView obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getUrl().c_str());






}



void test_ListView__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    ListView obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_ListView_description_is_converted_to_json()
{

    bourne::json input =
    {
        "description", "hello"
    };

    ListView obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["description"] == output["description"]);



}



void test_ListView_name_is_converted_to_json()
{

    bourne::json input =
    {
        "name", "hello"
    };

    ListView obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["name"] == output["name"]);



}


void test_ListView_url_is_converted_to_json()
{

    bourne::json input =
    {
        "url", "hello"
    };

    ListView obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["url"] == output["url"]);



}


