/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
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

    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
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
    //////////////////////////////////////
    // Override these for customization //
    //////////////////////////////////////

    virtual std::string toJsonString_internal(bool prettyJson = false);
    virtual void fromJsonString_internal(std::string const& jsonString);
    virtual boost::property_tree::ptree toPropertyTree_internal();
    virtual void fromPropertyTree_internal(boost::property_tree::ptree const& pt);


protected:
    bool m_Admin = false;
    bool m_Push = false;
    bool m_Pull = false;
    std::string m__class = "";
};

std::vector<GithubRepositorypermissions> createGithubRepositorypermissionsVectorFromJsonString(const std::string& json);

}
}
}
}

#endif /* GithubRepositorypermissions_H_ */
