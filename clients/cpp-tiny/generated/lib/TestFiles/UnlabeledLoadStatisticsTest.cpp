
#include "UnlabeledLoadStatistics.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_UnlabeledLoadStatistics__class_is_assigned_from_json()
{


    bourne::json input =
    {
        "_class", "hello"
    };

    UnlabeledLoadStatistics obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getClass().c_str());






}



void test_UnlabeledLoadStatistics__class_is_converted_to_json()
{

    bourne::json input =
    {
        "_class", "hello"
    };

    UnlabeledLoadStatistics obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["_class"] == output["_class"]);



}


