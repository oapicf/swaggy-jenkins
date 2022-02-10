
#include "PipelineRunNodeedges.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_PipelineRunNodeedges_id_is_assigned_from_json()
{


    bourne::json input =
    {
        "id", "hello"
    };

    PipelineRunNodeedges obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getId().c_str());






}


void test_PipelineRunNodeedges__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineRunNodeedges obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_PipelineRunNodeedges_id_is_converted_to_json()
{

    bourne::json input =
    {
        "id", "hello"
    };

    PipelineRunNodeedges obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["id"] == output["id"]);



}


void test_PipelineRunNodeedges__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineRunNodeedges obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


