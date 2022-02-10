
#include "EmptyChangeLogSet.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_EmptyChangeLogSet__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    EmptyChangeLogSet obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_EmptyChangeLogSet_kind_is_assigned_from_json()
{


    bourne::json input =
    {
        "kind", "hello"
    };

    EmptyChangeLogSet obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getKind().c_str());






}



void test_EmptyChangeLogSet__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    EmptyChangeLogSet obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_EmptyChangeLogSet_kind_is_converted_to_json()
{

    bourne::json input =
    {
        "kind", "hello"
    };

    EmptyChangeLogSet obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["kind"] == output["kind"]);



}


