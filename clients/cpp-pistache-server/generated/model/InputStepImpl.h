/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.5.1-pre.0
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
/*
 * InputStepImpl.h
 *
 * 
 */

#ifndef InputStepImpl_H_
#define InputStepImpl_H_


#include "InputStepImpllinks.h"
#include <string>
#include "StringParameterDefinition.h"
#include <vector>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  InputStepImpl
{
public:
    InputStepImpl();
    virtual ~InputStepImpl() = default;


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

    bool operator==(const InputStepImpl& rhs) const;
    bool operator!=(const InputStepImpl& rhs) const;

    /////////////////////////////////////////////
    /// InputStepImpl members

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
    org::openapitools::server::model::InputStepImpllinks getLinks() const;
    void setLinks(org::openapitools::server::model::InputStepImpllinks const& value);
    bool linksIsSet() const;
    void unset_links();
    /// <summary>
    /// 
    /// </summary>
    std::string getId() const;
    void setId(std::string const& value);
    bool idIsSet() const;
    void unsetId();
    /// <summary>
    /// 
    /// </summary>
    std::string getMessage() const;
    void setMessage(std::string const& value);
    bool messageIsSet() const;
    void unsetMessage();
    /// <summary>
    /// 
    /// </summary>
    std::string getOk() const;
    void setOk(std::string const& value);
    bool okIsSet() const;
    void unsetOk();
    /// <summary>
    /// 
    /// </summary>
    std::vector<org::openapitools::server::model::StringParameterDefinition> getParameters() const;
    void setParameters(std::vector<org::openapitools::server::model::StringParameterDefinition> const& value);
    bool parametersIsSet() const;
    void unsetParameters();
    /// <summary>
    /// 
    /// </summary>
    std::string getSubmitter() const;
    void setSubmitter(std::string const& value);
    bool submitterIsSet() const;
    void unsetSubmitter();

    friend void to_json(nlohmann::json& j, const InputStepImpl& o);
    friend void from_json(const nlohmann::json& j, InputStepImpl& o);
protected:
    std::string m__class;
    bool m__classIsSet;
    org::openapitools::server::model::InputStepImpllinks m__links;
    bool m__linksIsSet;
    std::string m_Id;
    bool m_IdIsSet;
    std::string m_Message;
    bool m_MessageIsSet;
    std::string m_Ok;
    bool m_OkIsSet;
    std::vector<org::openapitools::server::model::StringParameterDefinition> m_Parameters;
    bool m_ParametersIsSet;
    std::string m_Submitter;
    bool m_SubmitterIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* InputStepImpl_H_ */
