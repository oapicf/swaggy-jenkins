
#include "GithubContent.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_GithubContent_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "name", "hello"
    };

    GithubContent obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getName().c_str());






}


void test_GithubContent_sha_is_assigned_from_json()
{


    bourne::json input =
    {
        "sha", "hello"
    };

    GithubContent obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSha().c_str());






}


void test_GithubContent__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    GithubContent obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_GithubContent_repo_is_assigned_from_json()
{


    bourne::json input =
    {
        "repo", "hello"
    };

    GithubContent obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getRepo().c_str());






}


void test_GithubContent_size_is_assigned_from_json()
{
    bourne::json input =
    {
        "size", 1
    };

    GithubContent obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSize());








}


void test_GithubContent_owner_is_assigned_from_json()
{


    bourne::json input =
    {
        "owner", "hello"
    };

    GithubContent obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getOwner().c_str());






}


void test_GithubContent_path_is_assigned_from_json()
{


    bourne::json input =
    {
        "path", "hello"
    };

    GithubContent obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getPath().c_str());






}


void test_GithubContent_base64Data_is_assigned_from_json()
{


    bourne::json input =
    {
        "base64Data", "hello"
    };

    GithubContent obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getBase64Data().c_str());






}



void test_GithubContent_name_is_converted_to_json()
{

    bourne::json input =
    {
        "name", "hello"
    };

    GithubContent obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["name"] == output["name"]);



}


void test_GithubContent_sha_is_converted_to_json()
{

    bourne::json input =
    {
        "sha", "hello"
    };

    GithubContent obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["sha"] == output["sha"]);



}


void test_GithubContent__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    GithubContent obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_GithubContent_repo_is_converted_to_json()
{

    bourne::json input =
    {
        "repo", "hello"
    };

    GithubContent obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["repo"] == output["repo"]);



}


void test_GithubContent_size_is_converted_to_json()
{
    bourne::json input =
    {
        "size", 1
    };

    GithubContent obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["size"] == output["size"]);




}


void test_GithubContent_owner_is_converted_to_json()
{

    bourne::json input =
    {
        "owner", "hello"
    };

    GithubContent obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["owner"] == output["owner"]);



}


void test_GithubContent_path_is_converted_to_json()
{

    bourne::json input =
    {
        "path", "hello"
    };

    GithubContent obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["path"] == output["path"]);



}


void test_GithubContent_base64Data_is_converted_to_json()
{

    bourne::json input =
    {
        "base64Data", "hello"
    };

    GithubContent obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["base64Data"] == output["base64Data"]);



}


