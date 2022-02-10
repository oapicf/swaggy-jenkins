
#include "GithubRepositories.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_GithubRepositories__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    GithubRepositories obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}




void test_GithubRepositories_lastPage_is_assigned_from_json()
{
    bourne::json input =
    {
        "lastPage", 1
    };

    GithubRepositories obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLastPage());








}


void test_GithubRepositories_nextPage_is_assigned_from_json()
{
    bourne::json input =
    {
        "nextPage", 1
    };

    GithubRepositories obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getNextPage());








}


void test_GithubRepositories_pageSize_is_assigned_from_json()
{
    bourne::json input =
    {
        "pageSize", 1
    };

    GithubRepositories obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getPageSize());








}



void test_GithubRepositories__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    GithubRepositories obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}




void test_GithubRepositories_lastPage_is_converted_to_json()
{
    bourne::json input =
    {
        "lastPage", 1
    };

    GithubRepositories obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lastPage"] == output["lastPage"]);




}


void test_GithubRepositories_nextPage_is_converted_to_json()
{
    bourne::json input =
    {
        "nextPage", 1
    };

    GithubRepositories obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["nextPage"] == output["nextPage"]);




}


void test_GithubRepositories_pageSize_is_converted_to_json()
{
    bourne::json input =
    {
        "pageSize", 1
    };

    GithubRepositories obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["pageSize"] == output["pageSize"]);




}


