
#include "HudsonMasterComputer.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_HudsonMasterComputer__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    HudsonMasterComputer obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}


void test_HudsonMasterComputer_displayName_is_assigned_from_json()
{


    bourne::json input =
    {
        "displayName", "hello"
    };

    HudsonMasterComputer obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDisplayName().c_str());






}



void test_HudsonMasterComputer_icon_is_assigned_from_json()
{


    bourne::json input =
    {
        "icon", "hello"
    };

    HudsonMasterComputer obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getIcon().c_str());






}


void test_HudsonMasterComputer_iconClassName_is_assigned_from_json()
{


    bourne::json input =
    {
        "iconClassName", "hello"
    };

    HudsonMasterComputer obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getIconClassName().c_str());






}


void test_HudsonMasterComputer_idle_is_assigned_from_json()
{




    bourne::json input =
    {
        "idle", true
    };

    HudsonMasterComputer obj(input.dump());

    TEST_ASSERT(true == obj.isIdle());




}


void test_HudsonMasterComputer_jnlpAgent_is_assigned_from_json()
{




    bourne::json input =
    {
        "jnlpAgent", true
    };

    HudsonMasterComputer obj(input.dump());

    TEST_ASSERT(true == obj.isJnlpAgent());




}


void test_HudsonMasterComputer_launchSupported_is_assigned_from_json()
{




    bourne::json input =
    {
        "launchSupported", true
    };

    HudsonMasterComputer obj(input.dump());

    TEST_ASSERT(true == obj.isLaunchSupported());




}



void test_HudsonMasterComputer_manualLaunchAllowed_is_assigned_from_json()
{




    bourne::json input =
    {
        "manualLaunchAllowed", true
    };

    HudsonMasterComputer obj(input.dump());

    TEST_ASSERT(true == obj.isManualLaunchAllowed());




}



void test_HudsonMasterComputer_numExecutors_is_assigned_from_json()
{
    bourne::json input =
    {
        "numExecutors", 1
    };

    HudsonMasterComputer obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getNumExecutors());








}


void test_HudsonMasterComputer_offline_is_assigned_from_json()
{




    bourne::json input =
    {
        "offline", true
    };

    HudsonMasterComputer obj(input.dump());

    TEST_ASSERT(true == obj.isOffline());




}


void test_HudsonMasterComputer_offlineCause_is_assigned_from_json()
{


    bourne::json input =
    {
        "offlineCause", "hello"
    };

    HudsonMasterComputer obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getOfflineCause().c_str());






}


void test_HudsonMasterComputer_offlineCauseReason_is_assigned_from_json()
{


    bourne::json input =
    {
        "offlineCauseReason", "hello"
    };

    HudsonMasterComputer obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getOfflineCauseReason().c_str());






}


void test_HudsonMasterComputer_temporarilyOffline_is_assigned_from_json()
{




    bourne::json input =
    {
        "temporarilyOffline", true
    };

    HudsonMasterComputer obj(input.dump());

    TEST_ASSERT(true == obj.isTemporarilyOffline());




}



void test_HudsonMasterComputer__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    HudsonMasterComputer obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


void test_HudsonMasterComputer_displayName_is_converted_to_json()
{

    bourne::json input =
    {
        "displayName", "hello"
    };

    HudsonMasterComputer obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["displayName"] == output["displayName"]);



}



void test_HudsonMasterComputer_icon_is_converted_to_json()
{

    bourne::json input =
    {
        "icon", "hello"
    };

    HudsonMasterComputer obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["icon"] == output["icon"]);



}


void test_HudsonMasterComputer_iconClassName_is_converted_to_json()
{

    bourne::json input =
    {
        "iconClassName", "hello"
    };

    HudsonMasterComputer obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iconClassName"] == output["iconClassName"]);



}


void test_HudsonMasterComputer_idle_is_converted_to_json()
{


    bourne::json input =
    {
        "idle", true
    };

    HudsonMasterComputer obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["idle"] == output["idle"]);


}


void test_HudsonMasterComputer_jnlpAgent_is_converted_to_json()
{


    bourne::json input =
    {
        "jnlpAgent", true
    };

    HudsonMasterComputer obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["jnlpAgent"] == output["jnlpAgent"]);


}


void test_HudsonMasterComputer_launchSupported_is_converted_to_json()
{


    bourne::json input =
    {
        "launchSupported", true
    };

    HudsonMasterComputer obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["launchSupported"] == output["launchSupported"]);


}



void test_HudsonMasterComputer_manualLaunchAllowed_is_converted_to_json()
{


    bourne::json input =
    {
        "manualLaunchAllowed", true
    };

    HudsonMasterComputer obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["manualLaunchAllowed"] == output["manualLaunchAllowed"]);


}



void test_HudsonMasterComputer_numExecutors_is_converted_to_json()
{
    bourne::json input =
    {
        "numExecutors", 1
    };

    HudsonMasterComputer obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["numExecutors"] == output["numExecutors"]);




}


void test_HudsonMasterComputer_offline_is_converted_to_json()
{


    bourne::json input =
    {
        "offline", true
    };

    HudsonMasterComputer obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["offline"] == output["offline"]);


}


void test_HudsonMasterComputer_offlineCause_is_converted_to_json()
{

    bourne::json input =
    {
        "offlineCause", "hello"
    };

    HudsonMasterComputer obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["offlineCause"] == output["offlineCause"]);



}


void test_HudsonMasterComputer_offlineCauseReason_is_converted_to_json()
{

    bourne::json input =
    {
        "offlineCauseReason", "hello"
    };

    HudsonMasterComputer obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["offlineCauseReason"] == output["offlineCauseReason"]);



}


void test_HudsonMasterComputer_temporarilyOffline_is_converted_to_json()
{


    bourne::json input =
    {
        "temporarilyOffline", true
    };

    HudsonMasterComputer obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["temporarilyOffline"] == output["temporarilyOffline"]);


}


