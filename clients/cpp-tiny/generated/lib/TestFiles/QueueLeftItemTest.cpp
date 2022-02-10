
#include "QueueLeftItem.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_QueueLeftItem__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    QueueLeftItem obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_QueueLeftItem_blocked_is_assigned_from_json()
{




    bourne::json input =
    {
        "blocked", true
    };

    QueueLeftItem obj(input.dump());

    TEST_ASSERT(true == obj.isBlocked());




}


void test_QueueLeftItem_buildable_is_assigned_from_json()
{




    bourne::json input =
    {
        "buildable", true
    };

    QueueLeftItem obj(input.dump());

    TEST_ASSERT(true == obj.isBuildable());




}


void test_QueueLeftItem_id_is_assigned_from_json()
{
    bourne::json input =
    {
        "id", 1
    };

    QueueLeftItem obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getId());








}


void test_QueueLeftItem_inQueueSince_is_assigned_from_json()
{
    bourne::json input =
    {
        "inQueueSince", 1
    };

    QueueLeftItem obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getInQueueSince());








}


void test_QueueLeftItem_params_is_assigned_from_json()
{


    bourne::json input =
    {
        "params", "hello"
    };

    QueueLeftItem obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getParams().c_str());






}


void test_QueueLeftItem_stuck_is_assigned_from_json()
{




    bourne::json input =
    {
        "stuck", true
    };

    QueueLeftItem obj(input.dump());

    TEST_ASSERT(true == obj.isStuck());




}



void test_QueueLeftItem_url_is_assigned_from_json()
{


    bourne::json input =
    {
        "url", "hello"
    };

    QueueLeftItem obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getUrl().c_str());






}


void test_QueueLeftItem_why_is_assigned_from_json()
{


    bourne::json input =
    {
        "why", "hello"
    };

    QueueLeftItem obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getWhy().c_str());






}


void test_QueueLeftItem_cancelled_is_assigned_from_json()
{




    bourne::json input =
    {
        "cancelled", true
    };

    QueueLeftItem obj(input.dump());

    TEST_ASSERT(true == obj.isCancelled());




}




void test_QueueLeftItem__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    QueueLeftItem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}



void test_QueueLeftItem_blocked_is_converted_to_json()
{


    bourne::json input =
    {
        "blocked", true
    };

    QueueLeftItem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["blocked"] == output["blocked"]);


}


void test_QueueLeftItem_buildable_is_converted_to_json()
{


    bourne::json input =
    {
        "buildable", true
    };

    QueueLeftItem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["buildable"] == output["buildable"]);


}


void test_QueueLeftItem_id_is_converted_to_json()
{
    bourne::json input =
    {
        "id", 1
    };

    QueueLeftItem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["id"] == output["id"]);




}


void test_QueueLeftItem_inQueueSince_is_converted_to_json()
{
    bourne::json input =
    {
        "inQueueSince", 1
    };

    QueueLeftItem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["inQueueSince"] == output["inQueueSince"]);




}


void test_QueueLeftItem_params_is_converted_to_json()
{

    bourne::json input =
    {
        "params", "hello"
    };

    QueueLeftItem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["params"] == output["params"]);



}


void test_QueueLeftItem_stuck_is_converted_to_json()
{


    bourne::json input =
    {
        "stuck", true
    };

    QueueLeftItem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["stuck"] == output["stuck"]);


}



void test_QueueLeftItem_url_is_converted_to_json()
{

    bourne::json input =
    {
        "url", "hello"
    };

    QueueLeftItem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["url"] == output["url"]);



}


void test_QueueLeftItem_why_is_converted_to_json()
{

    bourne::json input =
    {
        "why", "hello"
    };

    QueueLeftItem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["why"] == output["why"]);



}


void test_QueueLeftItem_cancelled_is_converted_to_json()
{


    bourne::json input =
    {
        "cancelled", true
    };

    QueueLeftItem obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cancelled"] == output["cancelled"]);


}



