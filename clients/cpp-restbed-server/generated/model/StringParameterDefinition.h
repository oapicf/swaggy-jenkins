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
 * StringParameterDefinition.h
 *
 * 
 */

#ifndef StringParameterDefinition_H_
#define StringParameterDefinition_H_



#include <string>
#include "StringParameterValue.h"
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
class  StringParameterDefinition 
{
public:
    StringParameterDefinition() = default;
    explicit StringParameterDefinition(boost::property_tree::ptree const& pt);
    virtual ~StringParameterDefinition() = default;

    StringParameterDefinition(const StringParameterDefinition& other) = default; // copy constructor
    StringParameterDefinition(StringParameterDefinition&& other) noexcept = default; // move constructor

    StringParameterDefinition& operator=(const StringParameterDefinition& other) = default; // copy assignment
    StringParameterDefinition& operator=(StringParameterDefinition&& other) noexcept = default; // move assignment

    std::string toJsonString(bool prettyJson = false) const;
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree() const;
    void fromPropertyTree(boost::property_tree::ptree const& pt);


    /////////////////////////////////////////////
    /// StringParameterDefinition members

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

    /// <summary>
    /// 
    /// </summary>
    StringParameterValue getDefaultParameterValue() const;
    void setDefaultParameterValue(StringParameterValue value);

    /// <summary>
    /// 
    /// </summary>
    std::string getDescription() const;
    void setDescription(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getName() const;
    void setName(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getType() const;
    void setType(std::string value);

protected:
    std::string m__class = "";
    StringParameterValue m_DefaultParameterValue;
    std::string m_Description = "";
    std::string m_Name = "";
    std::string m_Type = "";
};

std::vector<StringParameterDefinition> createStringParameterDefinitionVectorFromJsonString(const std::string& json);

template<>
inline boost::property_tree::ptree toPt<StringParameterDefinition>(const StringParameterDefinition& val) {
    return val.toPropertyTree();
}

template<>
inline StringParameterDefinition fromPt<StringParameterDefinition>(const boost::property_tree::ptree& pt) {
    StringParameterDefinition ret;
    ret.fromPropertyTree(pt);
    return ret;
}

}
}
}
}

#endif /* StringParameterDefinition_H_ */
