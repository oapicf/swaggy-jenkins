
#include "GithubRepository.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_GithubRepository__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    GithubRepository obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_GithubRepository_defaultBranch_is_assigned_from_json()
{


    bourne::json input =
    {
        "defaultBranch", "hello"
    };

    GithubRepository obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDefaultBranch().c_str());






}


void test_GithubRepository_description_is_assigned_from_json()
{


    bourne::json input =
    {
        "description", "hello"
    };

    GithubRepository obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDescription().c_str());






}


void test_GithubRepository_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "name", "hello"
    };

    GithubRepository obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getName().c_str());






}



void test_GithubRepository_r_private_is_assigned_from_json()
{




    bourne::json input =
    {
        "r_private", true
    };

    GithubRepository obj(input.dump());

    TEST_ASSERT(true == obj.isRPrivate());




}


void test_GithubRepository_fullName_is_assigned_from_json()
{


    bourne::json input =
    {
        "fullName", "hello"
    };

    GithubRepository obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFullName().c_str());






}



void test_GithubRepository__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    GithubRepository obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}



void test_GithubRepository_defaultBranch_is_converted_to_json()
{

    bourne::json input =
    {
        "defaultBranch", "hello"
    };

    GithubRepository obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["defaultBranch"] == output["defaultBranch"]);



}


void test_GithubRepository_description_is_converted_to_json()
{

    bourne::json input =
    {
        "description", "hello"
    };

    GithubRepository obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["description"] == output["description"]);



}


void test_GithubRepository_name_is_converted_to_json()
{

    bourne::json input =
    {
        "name", "hello"
    };

    GithubRepository obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["name"] == output["name"]);



}



void test_GithubRepository_r_private_is_converted_to_json()
{


    bourne::json input =
    {
        "r_private", true
    };

    GithubRepository obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["r_private"] == output["r_private"]);


}


void test_GithubRepository_fullName_is_converted_to_json()
{

    bourne::json input =
    {
        "fullName", "hello"
    };

    GithubRepository obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fullName"] == output["fullName"]);



}


