/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.2-pre.0
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
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
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  CauseUserIdCause
{
public:
    CauseUserIdCause();
    virtual ~CauseUserIdCause() = default;


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

    bool operator==(const CauseUserIdCause& rhs) const;
    bool operator!=(const CauseUserIdCause& rhs) const;

    /////////////////////////////////////////////
    /// CauseUserIdCause members

    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool r_classIsSet() const;
    void unset_class();
    /// <summary>
    /// 
    /// </summary>
    std::string getShortDescription() const;
    void setShortDescription(std::string const& value);
    bool shortDescriptionIsSet() const;
    void unsetShortDescription();
    /// <summary>
    /// 
    /// </summary>
    std::string getUserId() const;
    void setUserId(std::string const& value);
    bool userIdIsSet() const;
    void unsetUserId();
    /// <summary>
    /// 
    /// </summary>
    std::string getUserName() const;
    void setUserName(std::string const& value);
    bool userNameIsSet() const;
    void unsetUserName();

    friend void to_json(nlohmann::json& j, const CauseUserIdCause& o);
    friend void from_json(const nlohmann::json& j, CauseUserIdCause& o);
protected:
    std::string m__class;
    bool m__classIsSet;
    std::string m_ShortDescription;
    bool m_ShortDescriptionIsSet;
    std::string m_UserId;
    bool m_UserIdIsSet;
    std::string m_UserName;
    bool m_UserNameIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* CauseUserIdCause_H_ */
