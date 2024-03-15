/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 2.0.1-pre.0
* Contact: blah+oapicf@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
/*
 * DefaultCrumbIssuer.h
 *
 * 
 */

#ifndef DefaultCrumbIssuer_H_
#define DefaultCrumbIssuer_H_


#include <string>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  DefaultCrumbIssuer
{
public:
    DefaultCrumbIssuer();
    virtual ~DefaultCrumbIssuer() = default;


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

    bool operator==(const DefaultCrumbIssuer& rhs) const;
    bool operator!=(const DefaultCrumbIssuer& rhs) const;

    /////////////////////////////////////////////
    /// DefaultCrumbIssuer members

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
    std::string getCrumb() const;
    void setCrumb(std::string const& value);
    bool crumbIsSet() const;
    void unsetCrumb();
    /// <summary>
    /// 
    /// </summary>
    std::string getCrumbRequestField() const;
    void setCrumbRequestField(std::string const& value);
    bool crumbRequestFieldIsSet() const;
    void unsetCrumbRequestField();

    friend  void to_json(nlohmann::json& j, const DefaultCrumbIssuer& o);
    friend  void from_json(const nlohmann::json& j, DefaultCrumbIssuer& o);
protected:
    std::string m__class;
    bool m__classIsSet;
    std::string m_Crumb;
    bool m_CrumbIsSet;
    std::string m_CrumbRequestField;
    bool m_CrumbRequestFieldIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* DefaultCrumbIssuer_H_ */
