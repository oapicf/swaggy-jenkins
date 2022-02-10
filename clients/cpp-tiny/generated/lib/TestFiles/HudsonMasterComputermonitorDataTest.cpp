
#include "HudsonMasterComputermonitorData.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"






void test_HudsonMasterComputermonitorData_hudsonnode_monitorsArchitectureMonitor_is_assigned_from_json()
{


    bourne::json input =
    {
        "hudsonnode_monitorsArchitectureMonitor", "hello"
    };

    HudsonMasterComputermonitorData obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getHudsonnodeMonitorsArchitectureMonitor().c_str());






}




void test_HudsonMasterComputermonitorData__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    HudsonMasterComputermonitorData obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}






void test_HudsonMasterComputermonitorData_hudsonnode_monitorsArchitectureMonitor_is_converted_to_json()
{

    bourne::json input =
    {
        "hudsonnode_monitorsArchitectureMonitor", "hello"
    };

    HudsonMasterComputermonitorData obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["hudsonnode_monitorsArchitectureMonitor"] == output["hudsonnode_monitorsArchitectureMonitor"]);



}




void test_HudsonMasterComputermonitorData__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    HudsonMasterComputermonitorData obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


