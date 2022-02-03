/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
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
#include <memory>
#include <vector>
#include <boost/property_tree/ptree.hpp>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  FavoriteImpl 
{
public:
    FavoriteImpl() = default;
    explicit FavoriteImpl(boost::property_tree::ptree const& pt);
    virtual ~FavoriteImpl() = default;

    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// FavoriteImpl members

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<FavoriteImpllinks> get_Links() const;
    void set_Links(std::shared_ptr<FavoriteImpllinks> value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<PipelineImpl> getItem() const;
    void setItem(std::shared_ptr<PipelineImpl> value);

protected:
    //////////////////////////////////////
    // Override these for customization //
    //////////////////////////////////////

    virtual std::string toJsonString_internal(bool prettyJson = false);
    virtual void fromJsonString_internal(std::string const& jsonString);
    virtual boost::property_tree::ptree toPropertyTree_internal();
    virtual void fromPropertyTree_internal(boost::property_tree::ptree const& pt);


protected:
    std::string m__class = "";
    std::shared_ptr<FavoriteImpllinks> m__links;
    std::shared_ptr<PipelineImpl> m_Item;
};

std::vector<FavoriteImpl> createFavoriteImplVectorFromJsonString(const std::string& json);

}
}
}
}

#endif /* FavoriteImpl_H_ */
