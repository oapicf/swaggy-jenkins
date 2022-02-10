
#include "GithubScm.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_GithubScm__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    GithubScm obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_GithubScm_credentialId_is_assigned_from_json()
{


    bourne::json input =
    {
        "credentialId", "hello"
    };

    GithubScm obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCredentialId().c_str());






}


void test_GithubScm_id_is_assigned_from_json()
{


    bourne::json input =
    {
        "id", "hello"
    };

    GithubScm obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getId().c_str());






}


void test_GithubScm_uri_is_assigned_from_json()
{


    bourne::json input =
    {
        "uri", "hello"
    };

    GithubScm obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getUri().c_str());






}



void test_GithubScm__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    GithubScm obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}



void test_GithubScm_credentialId_is_converted_to_json()
{

    bourne::json input =
    {
        "credentialId", "hello"
    };

    GithubScm obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["credentialId"] == output["credentialId"]);



}


void test_GithubScm_id_is_converted_to_json()
{

    bourne::json input =
    {
        "id", "hello"
    };

    GithubScm obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["id"] == output["id"]);



}


void test_GithubScm_uri_is_converted_to_json()
{

    bourne::json input =
    {
        "uri", "hello"
    };

    GithubScm obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["uri"] == output["uri"]);



}


