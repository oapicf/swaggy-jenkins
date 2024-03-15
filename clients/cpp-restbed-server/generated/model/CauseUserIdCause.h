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
 * CauseUserIdCause.h
 *
 * 
 */

#ifndef CauseUserIdCause_H_
#define CauseUserIdCause_H_



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
class  CauseUserIdCause 
{
public:
    CauseUserIdCause() = default;
    explicit CauseUserIdCause(boost::property_tree::ptree const& pt);
    virtual ~CauseUserIdCause() = default;

    CauseUserIdCause(const CauseUserIdCause& other) = default; // copy constructor
    CauseUserIdCause(CauseUserIdCause&& other) noexcept = default; // move constructor

    CauseUserIdCause& operator=(const CauseUserIdCause& other) = default; // copy assignment
    CauseUserIdCause& operator=(CauseUserIdCause&& other) noexcept = default; // move assignment

    std::string toJsonString(bool prettyJson = false) const;
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree() const;
    void fromPropertyTree(boost::property_tree::ptree const& pt);


    /////////////////////////////////////////////
    /// CauseUserIdCause members

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getShortDescription() const;
    void setShortDescription(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getUserId() const;
    void setUserId(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getUserName() const;
    void setUserName(std::string value);

protected:
    std::string m__class = "";
    std::string m_ShortDescription = "";
    std::string m_UserId = "";
    std::string m_UserName = "";
};

std::vector<CauseUserIdCause> createCauseUserIdCauseVectorFromJsonString(const std::string& json);

template<>
inline boost::property_tree::ptree toPt<CauseUserIdCause>(const CauseUserIdCause& val) {
    return val.toPropertyTree();
}

template<>
inline CauseUserIdCause fromPt<CauseUserIdCause>(const boost::property_tree::ptree& pt) {
    CauseUserIdCause ret;
    ret.fromPropertyTree(pt);
    return ret;
}

}
}
}
}

#endif /* CauseUserIdCause_H_ */
