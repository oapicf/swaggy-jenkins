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
 * StringParameterValue.h
 *
 * 
 */

#ifndef StringParameterValue_H_
#define StringParameterValue_H_


#include <string>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  StringParameterValue
{
public:
    StringParameterValue();
    virtual ~StringParameterValue() = default;


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

    bool operator==(const StringParameterValue& rhs) const;
    bool operator!=(const StringParameterValue& rhs) const;

    /////////////////////////////////////////////
    /// StringParameterValue members

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
    std::string getName() const;
    void setName(std::string const& value);
    bool nameIsSet() const;
    void unsetName();
    /// <summary>
    /// 
    /// </summary>
    std::string getValue() const;
    void setValue(std::string const& value);
    bool valueIsSet() const;
    void unsetValue();

    friend void to_json(nlohmann::json& j, const StringParameterValue& o);
    friend void from_json(const nlohmann::json& j, StringParameterValue& o);
protected:
    std::string m__class;
    bool m__classIsSet;
    std::string m_Name;
    bool m_NameIsSet;
    std::string m_Value;
    bool m_ValueIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* StringParameterValue_H_ */
