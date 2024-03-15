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
 * StringParameterValue.h
 *
 * 
 */

#ifndef StringParameterValue_H_
#define StringParameterValue_H_



#include <string>
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
class  StringParameterValue 
{
public:
    StringParameterValue() = default;
    explicit StringParameterValue(boost::property_tree::ptree const& pt);
    virtual ~StringParameterValue() = default;

    StringParameterValue(const StringParameterValue& other) = default; // copy constructor
    StringParameterValue(StringParameterValue&& other) noexcept = default; // move constructor

    StringParameterValue& operator=(const StringParameterValue& other) = default; // copy assignment
    StringParameterValue& operator=(StringParameterValue&& other) noexcept = default; // move assignment

    std::string toJsonString(bool prettyJson = false) const;
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree() const;
    void fromPropertyTree(boost::property_tree::ptree const& pt);


    /////////////////////////////////////////////
    /// StringParameterValue members

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getName() const;
    void setName(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getValue() const;
    void setValue(std::string value);

protected:
    std::string m__class = "";
    std::string m_Name = "";
    std::string m_Value = "";
};

std::vector<StringParameterValue> createStringParameterValueVectorFromJsonString(const std::string& json);

template<>
inline boost::property_tree::ptree toPt<StringParameterValue>(const StringParameterValue& val) {
    return val.toPropertyTree();
}

template<>
inline StringParameterValue fromPt<StringParameterValue>(const boost::property_tree::ptree& pt) {
    StringParameterValue ret;
    ret.fromPropertyTree(pt);
    return ret;
}

}
}
}
}

#endif /* StringParameterValue_H_ */
