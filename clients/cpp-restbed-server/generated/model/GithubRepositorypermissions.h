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
 * GithubRepositorypermissions.h
 *
 * 
 */

#ifndef GithubRepositorypermissions_H_
#define GithubRepositorypermissions_H_



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
class  GithubRepositorypermissions 
{
public:
    GithubRepositorypermissions() = default;
    explicit GithubRepositorypermissions(boost::property_tree::ptree const& pt);
    virtual ~GithubRepositorypermissions() = default;

    GithubRepositorypermissions(const GithubRepositorypermissions& other) = default; // copy constructor
    GithubRepositorypermissions(GithubRepositorypermissions&& other) noexcept = default; // move constructor

    GithubRepositorypermissions& operator=(const GithubRepositorypermissions& other) = default; // copy assignment
    GithubRepositorypermissions& operator=(GithubRepositorypermissions&& other) noexcept = default; // move assignment

    std::string toJsonString(bool prettyJson = false) const;
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree() const;
    void fromPropertyTree(boost::property_tree::ptree const& pt);


    /////////////////////////////////////////////
    /// GithubRepositorypermissions members

    /// <summary>
    /// 
    /// </summary>
    bool isAdmin() const;
    void setAdmin(bool value);

    /// <summary>
    /// 
    /// </summary>
    bool isPush() const;
    void setPush(bool value);

    /// <summary>
    /// 
    /// </summary>
    bool isPull() const;
    void setPull(bool value);

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

protected:
    bool m_Admin = false;
    bool m_Push = false;
    bool m_Pull = false;
    std::string m__class = "";
};

std::vector<GithubRepositorypermissions> createGithubRepositorypermissionsVectorFromJsonString(const std::string& json);

template<>
inline boost::property_tree::ptree toPt<GithubRepositorypermissions>(const GithubRepositorypermissions& val) {
    return val.toPropertyTree();
}

template<>
inline GithubRepositorypermissions fromPt<GithubRepositorypermissions>(const boost::property_tree::ptree& pt) {
    GithubRepositorypermissions ret;
    ret.fromPropertyTree(pt);
    return ret;
}

}
}
}
}

#endif /* GithubRepositorypermissions_H_ */
