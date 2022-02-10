
#include "PipelineBranchesitempullRequest.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"




void test_PipelineBranchesitempullRequest_author_is_assigned_from_json()
{


    bourne::json input =
    {
        "author", "hello"
    };

    PipelineBranchesitempullRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getAuthor().c_str());






}


void test_PipelineBranchesitempullRequest_id_is_assigned_from_json()
{


    bourne::json input =
    {
        "id", "hello"
    };

    PipelineBranchesitempullRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getId().c_str());






}


void test_PipelineBranchesitempullRequest_title_is_assigned_from_json()
{


    bourne::json input =
    {
        "title", "hello"
    };

    PipelineBranchesitempullRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getTitle().c_str());






}


void test_PipelineBranchesitempullRequest_url_is_assigned_from_json()
{


    bourne::json input =
    {
        "url", "hello"
    };

    PipelineBranchesitempullRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getUrl().c_str());






}


void test_PipelineBranchesitempullRequest__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineBranchesitempullRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}




void test_PipelineBranchesitempullRequest_author_is_converted_to_json()
{

    bourne::json input =
    {
        "author", "hello"
    };

    PipelineBranchesitempullRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["author"] == output["author"]);



}


void test_PipelineBranchesitempullRequest_id_is_converted_to_json()
{

    bourne::json input =
    {
        "id", "hello"
    };

    PipelineBranchesitempullRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["id"] == output["id"]);



}


void test_PipelineBranchesitempullRequest_title_is_converted_to_json()
{

    bourne::json input =
    {
        "title", "hello"
    };

    PipelineBranchesitempullRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["title"] == output["title"]);



}


void test_PipelineBranchesitempullRequest_url_is_converted_to_json()
{

    bourne::json input =
    {
        "url", "hello"
    };

    PipelineBranchesitempullRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["url"] == output["url"]);



}


void test_PipelineBranchesitempullRequest__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineBranchesitempullRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


