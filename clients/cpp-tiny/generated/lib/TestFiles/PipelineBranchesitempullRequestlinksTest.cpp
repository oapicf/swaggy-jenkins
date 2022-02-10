
#include "PipelineBranchesitempullRequestlinks.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_PipelineBranchesitempullRequestlinks_self_is_assigned_from_json()
{


    bourne::json input =
    {
        "self", "hello"
    };

    PipelineBranchesitempullRequestlinks obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSelf().c_str());






}


void test_PipelineBranchesitempullRequestlinks__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineBranchesitempullRequestlinks obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_PipelineBranchesitempullRequestlinks_self_is_converted_to_json()
{

    bourne::json input =
    {
        "self", "hello"
    };

    PipelineBranchesitempullRequestlinks obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["self"] == output["self"]);



}


void test_PipelineBranchesitempullRequestlinks__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineBranchesitempullRequestlinks obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


