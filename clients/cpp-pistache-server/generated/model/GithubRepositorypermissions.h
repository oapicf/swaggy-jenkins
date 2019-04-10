/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* OpenAPI spec version: 1.1.1
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


#include "ModelBase.h"

#include <string>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  GithubRepositorypermissions
    : public ModelBase
{
public:
    GithubRepositorypermissions();
    virtual ~GithubRepositorypermissions();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    nlohmann::json toJson() const override;
    void fromJson(nlohmann::json& json) override;

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
    bool classIsSet() const;
    void unset_class();

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

}
}
}
}

#endif /* GithubRepositorypermissions_H_ */
