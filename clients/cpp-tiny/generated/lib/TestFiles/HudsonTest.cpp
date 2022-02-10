
#include "Hudson.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Hudson__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    Hudson obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_Hudson_mode_is_assigned_from_json()
{


    bourne::json input =
    {
        "mode", "hello"
    };

    Hudson obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getMode().c_str());






}


void test_Hudson_nodeDescription_is_assigned_from_json()
{


    bourne::json input =
    {
        "nodeDescription", "hello"
    };

    Hudson obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getNodeDescription().c_str());






}


void test_Hudson_nodeName_is_assigned_from_json()
{


    bourne::json input =
    {
        "nodeName", "hello"
    };

    Hudson obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getNodeName().c_str());






}


void test_Hudson_numExecutors_is_assigned_from_json()
{
    bourne::json input =
    {
        "numExecutors", 1
    };

    Hudson obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getNumExecutors());








}


void test_Hudson_description_is_assigned_from_json()
{


    bourne::json input =
    {
        "description", "hello"
    };

    Hudson obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDescription().c_str());






}




void test_Hudson_quietingDown_is_assigned_from_json()
{




    bourne::json input =
    {
        "quietingDown", true
    };

    Hudson obj(input.dump());

    TEST_ASSERT(true == obj.isQuietingDown());




}


void test_Hudson_slaveAgentPort_is_assigned_from_json()
{
    bourne::json input =
    {
        "slaveAgentPort", 1
    };

    Hudson obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSlaveAgentPort());








}



void test_Hudson_useCrumbs_is_assigned_from_json()
{




    bourne::json input =
    {
        "useCrumbs", true
    };

    Hudson obj(input.dump());

    TEST_ASSERT(true == obj.isUseCrumbs());




}


void test_Hudson_useSecurity_is_assigned_from_json()
{




    bourne::json input =
    {
        "useSecurity", true
    };

    Hudson obj(input.dump());

    TEST_ASSERT(true == obj.isUseSecurity());




}




void test_Hudson__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    Hudson obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}



void test_Hudson_mode_is_converted_to_json()
{

    bourne::json input =
    {
        "mode", "hello"
    };

    Hudson obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mode"] == output["mode"]);



}


void test_Hudson_nodeDescription_is_converted_to_json()
{

    bourne::json input =
    {
        "nodeDescription", "hello"
    };

    Hudson obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["nodeDescription"] == output["nodeDescription"]);



}


void test_Hudson_nodeName_is_converted_to_json()
{

    bourne::json input =
    {
        "nodeName", "hello"
    };

    Hudson obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["nodeName"] == output["nodeName"]);



}


void test_Hudson_numExecutors_is_converted_to_json()
{
    bourne::json input =
    {
        "numExecutors", 1
    };

    Hudson obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["numExecutors"] == output["numExecutors"]);




}


void test_Hudson_description_is_converted_to_json()
{

    bourne::json input =
    {
        "description", "hello"
    };

    Hudson obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["description"] == output["description"]);



}




void test_Hudson_quietingDown_is_converted_to_json()
{


    bourne::json input =
    {
        "quietingDown", true
    };

    Hudson obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["quietingDown"] == output["quietingDown"]);


}


void test_Hudson_slaveAgentPort_is_converted_to_json()
{
    bourne::json input =
    {
        "slaveAgentPort", 1
    };

    Hudson obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["slaveAgentPort"] == output["slaveAgentPort"]);




}



void test_Hudson_useCrumbs_is_converted_to_json()
{


    bourne::json input =
    {
        "useCrumbs", true
    };

    Hudson obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["useCrumbs"] == output["useCrumbs"]);


}


void test_Hudson_useSecurity_is_converted_to_json()
{


    bourne::json input =
    {
        "useSecurity", true
    };

    Hudson obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["useSecurity"] == output["useSecurity"]);


}



