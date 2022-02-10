
#include "Link.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Link__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    Link obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_Link_href_is_assigned_from_json()
{


    bourne::json input =
    {
        "href", "hello"
    };

    Link obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getHref().c_str());






}



void test_Link__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    Link obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_Link_href_is_converted_to_json()
{

    bourne::json input =
    {
        "href", "hello"
    };

    Link obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["href"] == output["href"]);



}


