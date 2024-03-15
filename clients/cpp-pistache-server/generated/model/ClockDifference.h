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
 * ClockDifference.h
 *
 * 
 */

#ifndef ClockDifference_H_
#define ClockDifference_H_


#include <string>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  ClockDifference
{
public:
    ClockDifference();
    virtual ~ClockDifference() = default;


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

    bool operator==(const ClockDifference& rhs) const;
    bool operator!=(const ClockDifference& rhs) const;

    /////////////////////////////////////////////
    /// ClockDifference members

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
    int32_t getDiff() const;
    void setDiff(int32_t const value);
    bool diffIsSet() const;
    void unsetDiff();

    friend  void to_json(nlohmann::json& j, const ClockDifference& o);
    friend  void from_json(const nlohmann::json& j, ClockDifference& o);
protected:
    std::string m__class;
    bool m__classIsSet;
    int32_t m_Diff;
    bool m_DiffIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* ClockDifference_H_ */
