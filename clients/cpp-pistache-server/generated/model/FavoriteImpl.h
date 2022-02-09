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
 * FavoriteImpl.h
 *
 * 
 */

#ifndef FavoriteImpl_H_
#define FavoriteImpl_H_


#include "PipelineImpl.h"
#include <string>
#include "FavoriteImpllinks.h"
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  FavoriteImpl
{
public:
    FavoriteImpl();
    virtual ~FavoriteImpl() = default;


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

    bool operator==(const FavoriteImpl& rhs) const;
    bool operator!=(const FavoriteImpl& rhs) const;

    /////////////////////////////////////////////
    /// FavoriteImpl members

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
    FavoriteImpllinks getLinks() const;
    void setLinks(FavoriteImpllinks const& value);
    bool linksIsSet() const;
    void unset_links();
    /// <summary>
    /// 
    /// </summary>
    PipelineImpl getItem() const;
    void setItem(PipelineImpl const& value);
    bool itemIsSet() const;
    void unsetItem();

    friend void to_json(nlohmann::json& j, const FavoriteImpl& o);
    friend void from_json(const nlohmann::json& j, FavoriteImpl& o);
protected:
    std::string m__class;
    bool m__classIsSet;
    FavoriteImpllinks m__links;
    bool m__linksIsSet;
    PipelineImpl m_Item;
    bool m_ItemIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* FavoriteImpl_H_ */
