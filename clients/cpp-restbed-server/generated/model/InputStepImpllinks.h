/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 7.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * InputStepImpllinks.h
 *
 * 
 */

#ifndef InputStepImpllinks_H_
#define InputStepImpllinks_H_



#include <string>
#include "Link.h"
#include <memory>
#include <vector>
#include <boost/property_tree/ptree.hpp>
#include "helpers.h"

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  InputStepImpllinks 
{
public:
    InputStepImpllinks() = default;
    explicit InputStepImpllinks(boost::property_tree::ptree const& pt);
    virtual ~InputStepImpllinks() = default;

    InputStepImpllinks(const InputStepImpllinks& other) = default; // copy constructor
    InputStepImpllinks(InputStepImpllinks&& other) noexcept = default; // move constructor

    InputStepImpllinks& operator=(const InputStepImpllinks& other) = default; // copy assignment
    InputStepImpllinks& operator=(InputStepImpllinks&& other) noexcept = default; // move assignment

    std::string toJsonString(bool prettyJson = false) const;
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree() const;
    void fromPropertyTree(boost::property_tree::ptree const& pt);


    /////////////////////////////////////////////
    /// InputStepImpllinks members

    /// <summary>
    /// 
    /// </summary>
    Link getSelf() const;
    void setSelf(Link value);

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

protected:
    Link m_Self;
    std::string m__class = "";
};

std::vector<InputStepImpllinks> createInputStepImpllinksVectorFromJsonString(const std::string& json);

template<>
inline boost::property_tree::ptree toPt<InputStepImpllinks>(const InputStepImpllinks& val) {
    return val.toPropertyTree();
}

template<>
inline InputStepImpllinks fromPt<InputStepImpllinks>(const boost::property_tree::ptree& pt) {
    InputStepImpllinks ret;
    ret.fromPropertyTree(pt);
    return ret;
}

}
}
}
}

#endif /* InputStepImpllinks_H_ */
