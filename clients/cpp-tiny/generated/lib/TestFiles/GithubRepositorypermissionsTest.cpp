
#include "GithubRepositorypermissions.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_GithubRepositorypermissions_admin_is_assigned_from_json()
{




    bourne::json input =
    {
        "admin", true
    };

    GithubRepositorypermissions obj(input.dump());

    TEST_ASSERT(true == obj.isAdmin());




}


void test_GithubRepositorypermissions_push_is_assigned_from_json()
{




    bourne::json input =
    {
        "push", true
    };

    GithubRepositorypermissions obj(input.dump());

    TEST_ASSERT(true == obj.isPush());




}


void test_GithubRepositorypermissions_pull_is_assigned_from_json()
{




    bourne::json input =
    {
        "pull", true
    };

    GithubRepositorypermissions obj(input.dump());

    TEST_ASSERT(true == obj.isPull());




}


void test_GithubRepositorypermissions__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    GithubRepositorypermissions obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_GithubRepositorypermissions_admin_is_converted_to_json()
{


    bourne::json input =
    {
        "admin", true
    };

    GithubRepositorypermissions obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["admin"] == output["admin"]);


}


void test_GithubRepositorypermissions_push_is_converted_to_json()
{


    bourne::json input =
    {
        "push", true
    };

    GithubRepositorypermissions obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["push"] == output["push"]);


}


void test_GithubRepositorypermissions_pull_is_converted_to_json()
{


    bourne::json input =
    {
        "pull", true
    };

    GithubRepositorypermissions obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["pull"] == output["pull"]);


}


void test_GithubRepositorypermissions__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    GithubRepositorypermissions obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


