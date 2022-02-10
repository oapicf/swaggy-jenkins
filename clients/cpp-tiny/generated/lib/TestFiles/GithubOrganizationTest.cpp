
#include "GithubOrganization.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_GithubOrganization__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    GithubOrganization obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_GithubOrganization_jenkinsOrganizationPipeline_is_assigned_from_json()
{




    bourne::json input =
    {
        "jenkinsOrganizationPipeline", true
    };

    GithubOrganization obj(input.dump());

    TEST_ASSERT(true == obj.isJenkinsOrganizationPipeline());




}


void test_GithubOrganization_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "name", "hello"
    };

    GithubOrganization obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getName().c_str());






}



void test_GithubOrganization__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    GithubOrganization obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}



void test_GithubOrganization_jenkinsOrganizationPipeline_is_converted_to_json()
{


    bourne::json input =
    {
        "jenkinsOrganizationPipeline", true
    };

    GithubOrganization obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["jenkinsOrganizationPipeline"] == output["jenkinsOrganizationPipeline"]);


}


void test_GithubOrganization_name_is_converted_to_json()
{

    bourne::json input =
    {
        "name", "hello"
    };

    GithubOrganization obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["name"] == output["name"]);



}


