
#include "PipelineFolderImpl.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_PipelineFolderImpl__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineFolderImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_PipelineFolderImpl_displayName_is_assigned_from_json()
{


    bourne::json input =
    {
        "displayName", "hello"
    };

    PipelineFolderImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDisplayName().c_str());






}


void test_PipelineFolderImpl_fullName_is_assigned_from_json()
{


    bourne::json input =
    {
        "fullName", "hello"
    };

    PipelineFolderImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFullName().c_str());






}


void test_PipelineFolderImpl_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "name", "hello"
    };

    PipelineFolderImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getName().c_str());






}


void test_PipelineFolderImpl_organization_is_assigned_from_json()
{


    bourne::json input =
    {
        "organization", "hello"
    };

    PipelineFolderImpl obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getOrganization().c_str());






}


void test_PipelineFolderImpl_numberOfFolders_is_assigned_from_json()
{
    bourne::json input =
    {
        "numberOfFolders", 1
    };

    PipelineFolderImpl obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getNumberOfFolders());








}


void test_PipelineFolderImpl_numberOfPipelines_is_assigned_from_json()
{
    bourne::json input =
    {
        "numberOfPipelines", 1
    };

    PipelineFolderImpl obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getNumberOfPipelines());








}



void test_PipelineFolderImpl__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    PipelineFolderImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_PipelineFolderImpl_displayName_is_converted_to_json()
{

    bourne::json input =
    {
        "displayName", "hello"
    };

    PipelineFolderImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["displayName"] == output["displayName"]);



}


void test_PipelineFolderImpl_fullName_is_converted_to_json()
{

    bourne::json input =
    {
        "fullName", "hello"
    };

    PipelineFolderImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fullName"] == output["fullName"]);



}


void test_PipelineFolderImpl_name_is_converted_to_json()
{

    bourne::json input =
    {
        "name", "hello"
    };

    PipelineFolderImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["name"] == output["name"]);



}


void test_PipelineFolderImpl_organization_is_converted_to_json()
{

    bourne::json input =
    {
        "organization", "hello"
    };

    PipelineFolderImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["organization"] == output["organization"]);



}


void test_PipelineFolderImpl_numberOfFolders_is_converted_to_json()
{
    bourne::json input =
    {
        "numberOfFolders", 1
    };

    PipelineFolderImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["numberOfFolders"] == output["numberOfFolders"]);




}


void test_PipelineFolderImpl_numberOfPipelines_is_converted_to_json()
{
    bourne::json input =
    {
        "numberOfPipelines", 1
    };

    PipelineFolderImpl obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["numberOfPipelines"] == output["numberOfPipelines"]);




}


