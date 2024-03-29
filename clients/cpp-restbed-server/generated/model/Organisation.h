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
 * Organisation.h
 *
 * 
 */

#ifndef Organisation_H_
#define Organisation_H_



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
class  Organisation 
{
public:
    Organisation() = default;
    explicit Organisation(boost::property_tree::ptree const& pt);
    virtual ~Organisation() = default;

    Organisation(const Organisation& other) = default; // copy constructor
    Organisation(Organisation&& other) noexcept = default; // move constructor

    Organisation& operator=(const Organisation& other) = default; // copy assignment
    Organisation& operator=(Organisation&& other) noexcept = default; // move assignment

    std::string toJsonString(bool prettyJson = false) const;
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree() const;
    void fromPropertyTree(boost::property_tree::ptree const& pt);


    /////////////////////////////////////////////
    /// Organisation members

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

protected:
    std::string m__class = "";
    std::string m_Name = "";
};

std::vector<Organisation> createOrganisationVectorFromJsonString(const std::string& json);

template<>
inline boost::property_tree::ptree toPt<Organisation>(const Organisation& val) {
    return val.toPropertyTree();
}

template<>
inline Organisation fromPt<Organisation>(const boost::property_tree::ptree& pt) {
    Organisation ret;
    ret.fromPropertyTree(pt);
    return ret;
}

}
}
}
}

#endif /* Organisation_H_ */
