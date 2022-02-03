/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.1
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
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
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  GithubRepositorypermissions
{
public:
    GithubRepositorypermissions();
    virtual ~GithubRepositorypermissions() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    /// <summary>
    /// Helper overload for validate. Used when one model stores another model and calls it's validate.
    /// Not meant to be called outside that case.
    /// </summary>
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;

    bool operator==(const GithubRepositorypermissions& rhs) const;
    bool operator!=(const GithubRepositorypermissions& rhs) const;

    /////////////////////////////////////////////
    /// GithubRepositorypermissions members

    /// <summary>
    /// 
    /// </summary>
    bool isAdmin() const;
    void setAdmin(bool const value);
    bool adminIsSet() const;
    void unsetAdmin();
    /// <summary>
    /// 
    /// </summary>
    bool isPush() const;
    void setPush(bool const value);
    bool pushIsSet() const;
    void unsetPush();
    /// <summary>
    /// 
    /// </summary>
    bool isPull() const;
    void setPull(bool const value);
    bool pullIsSet() const;
    void unsetPull();
    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool r_classIsSet() const;
    void unset_class();

    friend void to_json(nlohmann::json& j, const GithubRepositorypermissions& o);
    friend void from_json(const nlohmann::json& j, GithubRepositorypermissions& o);
protected:
    bool m_Admin;
    bool m_AdminIsSet;
    bool m_Push;
    bool m_PushIsSet;
    bool m_Pull;
    bool m_PullIsSet;
    std::string m__class;
    bool m__classIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* GithubRepositorypermissions_H_ */
