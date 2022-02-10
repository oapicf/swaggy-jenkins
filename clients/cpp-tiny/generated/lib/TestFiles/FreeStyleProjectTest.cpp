
#include "FreeStyleProject.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_FreeStyleProject__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_FreeStyleProject_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "name", "hello"
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getName().c_str());






}


void test_FreeStyleProject_url_is_assigned_from_json()
{


    bourne::json input =
    {
        "url", "hello"
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getUrl().c_str());






}


void test_FreeStyleProject_color_is_assigned_from_json()
{


    bourne::json input =
    {
        "color", "hello"
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getColor().c_str());






}



void test_FreeStyleProject_description_is_assigned_from_json()
{


    bourne::json input =
    {
        "description", "hello"
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDescription().c_str());






}


void test_FreeStyleProject_displayName_is_assigned_from_json()
{


    bourne::json input =
    {
        "displayName", "hello"
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDisplayName().c_str());






}


void test_FreeStyleProject_displayNameOrNull_is_assigned_from_json()
{


    bourne::json input =
    {
        "displayNameOrNull", "hello"
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDisplayNameOrNull().c_str());






}


void test_FreeStyleProject_fullDisplayName_is_assigned_from_json()
{


    bourne::json input =
    {
        "fullDisplayName", "hello"
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFullDisplayName().c_str());






}


void test_FreeStyleProject_fullName_is_assigned_from_json()
{


    bourne::json input =
    {
        "fullName", "hello"
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFullName().c_str());






}


void test_FreeStyleProject_buildable_is_assigned_from_json()
{




    bourne::json input =
    {
        "buildable", true
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT(true == obj.isBuildable());




}





void test_FreeStyleProject_inQueue_is_assigned_from_json()
{




    bourne::json input =
    {
        "inQueue", true
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT(true == obj.isInQueue());




}


void test_FreeStyleProject_keepDependencies_is_assigned_from_json()
{




    bourne::json input =
    {
        "keepDependencies", true
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT(true == obj.isKeepDependencies());




}




void test_FreeStyleProject_lastFailedBuild_is_assigned_from_json()
{


    bourne::json input =
    {
        "lastFailedBuild", "hello"
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getLastFailedBuild().c_str());






}




void test_FreeStyleProject_lastUnstableBuild_is_assigned_from_json()
{


    bourne::json input =
    {
        "lastUnstableBuild", "hello"
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getLastUnstableBuild().c_str());






}


void test_FreeStyleProject_lastUnsuccessfulBuild_is_assigned_from_json()
{


    bourne::json input =
    {
        "lastUnsuccessfulBuild", "hello"
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getLastUnsuccessfulBuild().c_str());






}


void test_FreeStyleProject_nextBuildNumber_is_assigned_from_json()
{
    bourne::json input =
    {
        "nextBuildNumber", 1
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getNextBuildNumber());








}


void test_FreeStyleProject_queueItem_is_assigned_from_json()
{


    bourne::json input =
    {
        "queueItem", "hello"
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getQueueItem().c_str());






}


void test_FreeStyleProject_concurrentBuild_is_assigned_from_json()
{




    bourne::json input =
    {
        "concurrentBuild", true
    };

    FreeStyleProject obj(input.dump());

    TEST_ASSERT(true == obj.isConcurrentBuild());




}




void test_FreeStyleProject__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_FreeStyleProject_name_is_converted_to_json()
{

    bourne::json input =
    {
        "name", "hello"
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["name"] == output["name"]);



}


void test_FreeStyleProject_url_is_converted_to_json()
{

    bourne::json input =
    {
        "url", "hello"
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["url"] == output["url"]);



}


void test_FreeStyleProject_color_is_converted_to_json()
{

    bourne::json input =
    {
        "color", "hello"
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["color"] == output["color"]);



}



void test_FreeStyleProject_description_is_converted_to_json()
{

    bourne::json input =
    {
        "description", "hello"
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["description"] == output["description"]);



}


void test_FreeStyleProject_displayName_is_converted_to_json()
{

    bourne::json input =
    {
        "displayName", "hello"
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["displayName"] == output["displayName"]);



}


void test_FreeStyleProject_displayNameOrNull_is_converted_to_json()
{

    bourne::json input =
    {
        "displayNameOrNull", "hello"
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["displayNameOrNull"] == output["displayNameOrNull"]);



}


void test_FreeStyleProject_fullDisplayName_is_converted_to_json()
{

    bourne::json input =
    {
        "fullDisplayName", "hello"
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fullDisplayName"] == output["fullDisplayName"]);



}


void test_FreeStyleProject_fullName_is_converted_to_json()
{

    bourne::json input =
    {
        "fullName", "hello"
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fullName"] == output["fullName"]);



}


void test_FreeStyleProject_buildable_is_converted_to_json()
{


    bourne::json input =
    {
        "buildable", true
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["buildable"] == output["buildable"]);


}





void test_FreeStyleProject_inQueue_is_converted_to_json()
{


    bourne::json input =
    {
        "inQueue", true
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["inQueue"] == output["inQueue"]);


}


void test_FreeStyleProject_keepDependencies_is_converted_to_json()
{


    bourne::json input =
    {
        "keepDependencies", true
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["keepDependencies"] == output["keepDependencies"]);


}




void test_FreeStyleProject_lastFailedBuild_is_converted_to_json()
{

    bourne::json input =
    {
        "lastFailedBuild", "hello"
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lastFailedBuild"] == output["lastFailedBuild"]);



}




void test_FreeStyleProject_lastUnstableBuild_is_converted_to_json()
{

    bourne::json input =
    {
        "lastUnstableBuild", "hello"
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lastUnstableBuild"] == output["lastUnstableBuild"]);



}


void test_FreeStyleProject_lastUnsuccessfulBuild_is_converted_to_json()
{

    bourne::json input =
    {
        "lastUnsuccessfulBuild", "hello"
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lastUnsuccessfulBuild"] == output["lastUnsuccessfulBuild"]);



}


void test_FreeStyleProject_nextBuildNumber_is_converted_to_json()
{
    bourne::json input =
    {
        "nextBuildNumber", 1
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["nextBuildNumber"] == output["nextBuildNumber"]);




}


void test_FreeStyleProject_queueItem_is_converted_to_json()
{

    bourne::json input =
    {
        "queueItem", "hello"
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["queueItem"] == output["queueItem"]);



}


void test_FreeStyleProject_concurrentBuild_is_converted_to_json()
{


    bourne::json input =
    {
        "concurrentBuild", true
    };

    FreeStyleProject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["concurrentBuild"] == output["concurrentBuild"]);


}



