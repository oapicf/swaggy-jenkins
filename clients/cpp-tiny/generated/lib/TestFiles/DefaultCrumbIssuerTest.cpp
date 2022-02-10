
#include "DefaultCrumbIssuer.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_DefaultCrumbIssuer__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    DefaultCrumbIssuer obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_DefaultCrumbIssuer_crumb_is_assigned_from_json()
{


    bourne::json input =
    {
        "crumb", "hello"
    };

    DefaultCrumbIssuer obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCrumb().c_str());






}


void test_DefaultCrumbIssuer_crumbRequestField_is_assigned_from_json()
{


    bourne::json input =
    {
        "crumbRequestField", "hello"
    };

    DefaultCrumbIssuer obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCrumbRequestField().c_str());






}



void test_DefaultCrumbIssuer__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    DefaultCrumbIssuer obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_DefaultCrumbIssuer_crumb_is_converted_to_json()
{

    bourne::json input =
    {
        "crumb", "hello"
    };

    DefaultCrumbIssuer obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["crumb"] == output["crumb"]);



}


void test_DefaultCrumbIssuer_crumbRequestField_is_converted_to_json()
{

    bourne::json input =
    {
        "crumbRequestField", "hello"
    };

    DefaultCrumbIssuer obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["crumbRequestField"] == output["crumbRequestField"]);



}


