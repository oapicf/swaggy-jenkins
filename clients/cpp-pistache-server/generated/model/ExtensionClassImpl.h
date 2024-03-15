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
 * ExtensionClassImpl.h
 *
 * 
 */

#ifndef ExtensionClassImpl_H_
#define ExtensionClassImpl_H_


#include "ExtensionClassImpllinks.h"
#include <string>
#include <vector>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  ExtensionClassImpl
{
public:
    ExtensionClassImpl();
    virtual ~ExtensionClassImpl() = default;


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

    bool operator==(const ExtensionClassImpl& rhs) const;
    bool operator!=(const ExtensionClassImpl& rhs) const;

    /////////////////////////////////////////////
    /// ExtensionClassImpl members

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
    org::openapitools::server::model::ExtensionClassImpllinks getLinks() const;
    void setLinks(org::openapitools::server::model::ExtensionClassImpllinks const& value);
    bool linksIsSet() const;
    void unset_links();
    /// <summary>
    /// 
    /// </summary>
    std::vector<std::string> getClasses() const;
    void setClasses(std::vector<std::string> const& value);
    bool classesIsSet() const;
    void unsetClasses();

    friend  void to_json(nlohmann::json& j, const ExtensionClassImpl& o);
    friend  void from_json(const nlohmann::json& j, ExtensionClassImpl& o);
protected:
    std::string m__class;
    bool m__classIsSet;
    org::openapitools::server::model::ExtensionClassImpllinks m__links;
    bool m__linksIsSet;
    std::vector<std::string> m_Classes;
    bool m_ClassesIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* ExtensionClassImpl_H_ */
