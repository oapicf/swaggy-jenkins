
#include "PipelinelatestRunartifacts.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_PipelinelatestRunartifacts_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "name", "hello"
    };

    PipelinelatestRunartifacts obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getName().c_str());






}


void test_PipelinelatestRunartifacts_size_is_assigned_from_json()
{
    bourne::json input =
    {
        "size", 1
    };

    PipelinelatestRunartifacts obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSize());








}


void test_PipelinelatestRunartifacts_url_is_assigned_from_json()
{


    bourne::json input =
    {
        "url", "hello"
    };

    PipelinelatestRunartifacts obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getUrl().c_str());






}


void test_PipelinelatestRunartifacts__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    PipelinelatestRunartifacts obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_PipelinelatestRunartifacts_name_is_converted_to_json()
{

    bourne::json input =
    {
        "name", "hello"
    };

    PipelinelatestRunartifacts obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["name"] == output["name"]);



}


void test_PipelinelatestRunartifacts_size_is_converted_to_json()
{
    bourne::json input =
    {
        "size", 1
    };

    PipelinelatestRunartifacts obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["size"] == output["size"]);




}


void test_PipelinelatestRunartifacts_url_is_converted_to_json()
{

    bourne::json input =
    {
        "url", "hello"
    };

    PipelinelatestRunartifacts obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["url"] == output["url"]);



}


void test_PipelinelatestRunartifacts__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    PipelinelatestRunartifacts obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


