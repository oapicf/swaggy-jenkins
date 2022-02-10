
#include "User.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_User__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    User obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_User_id_is_assigned_from_json()
{


    bourne::json input =
    {
        "id", "hello"
    };

    User obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getId().c_str());






}


void test_User_fullName_is_assigned_from_json()
{


    bourne::json input =
    {
        "fullName", "hello"
    };

    User obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFullName().c_str());






}


void test_User_email_is_assigned_from_json()
{


    bourne::json input =
    {
        "email", "hello"
    };

    User obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getEmail().c_str());






}


void test_User_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "name", "hello"
    };

    User obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getName().c_str());






}



void test_User__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    User obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_User_id_is_converted_to_json()
{

    bourne::json input =
    {
        "id", "hello"
    };

    User obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["id"] == output["id"]);



}


void test_User_fullName_is_converted_to_json()
{

    bourne::json input =
    {
        "fullName", "hello"
    };

    User obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fullName"] == output["fullName"]);



}


void test_User_email_is_converted_to_json()
{

    bourne::json input =
    {
        "email", "hello"
    };

    User obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["email"] == output["email"]);



}


void test_User_name_is_converted_to_json()
{

    bourne::json input =
    {
        "name", "hello"
    };

    User obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["name"] == output["name"]);



}


