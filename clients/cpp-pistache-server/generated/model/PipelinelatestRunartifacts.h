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
 * PipelinelatestRunartifacts.h
 *
 * 
 */

#ifndef PipelinelatestRunartifacts_H_
#define PipelinelatestRunartifacts_H_


#include <string>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  PipelinelatestRunartifacts
{
public:
    PipelinelatestRunartifacts();
    virtual ~PipelinelatestRunartifacts() = default;


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

    bool operator==(const PipelinelatestRunartifacts& rhs) const;
    bool operator!=(const PipelinelatestRunartifacts& rhs) const;

    /////////////////////////////////////////////
    /// PipelinelatestRunartifacts members

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
    int32_t getSize() const;
    void setSize(int32_t const value);
    bool sizeIsSet() const;
    void unsetSize();
    /// <summary>
    /// 
    /// </summary>
    std::string getUrl() const;
    void setUrl(std::string const& value);
    bool urlIsSet() const;
    void unsetUrl();
    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool r_classIsSet() const;
    void unset_class();

    friend void to_json(nlohmann::json& j, const PipelinelatestRunartifacts& o);
    friend void from_json(const nlohmann::json& j, PipelinelatestRunartifacts& o);
protected:
    std::string m_Name;
    bool m_NameIsSet;
    int32_t m_Size;
    bool m_SizeIsSet;
    std::string m_Url;
    bool m_UrlIsSet;
    std::string m__class;
    bool m__classIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* PipelinelatestRunartifacts_H_ */
