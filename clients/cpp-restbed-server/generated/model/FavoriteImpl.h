/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 7.4.0.
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
#include "helpers.h"

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

    FavoriteImpl(const FavoriteImpl& other) = default; // copy constructor
    FavoriteImpl(FavoriteImpl&& other) noexcept = default; // move constructor

    FavoriteImpl& operator=(const FavoriteImpl& other) = default; // copy assignment
    FavoriteImpl& operator=(FavoriteImpl&& other) noexcept = default; // move assignment

    std::string toJsonString(bool prettyJson = false) const;
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree() const;
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
    FavoriteImpllinks get_Links() const;
    void set_Links(FavoriteImpllinks value);

    /// <summary>
    /// 
    /// </summary>
    PipelineImpl getItem() const;
    void setItem(PipelineImpl value);

protected:
    std::string m__class = "";
    FavoriteImpllinks m__links;
    PipelineImpl m_Item;
};

std::vector<FavoriteImpl> createFavoriteImplVectorFromJsonString(const std::string& json);

template<>
inline boost::property_tree::ptree toPt<FavoriteImpl>(const FavoriteImpl& val) {
    return val.toPropertyTree();
}

template<>
inline FavoriteImpl fromPt<FavoriteImpl>(const boost::property_tree::ptree& pt) {
    FavoriteImpl ret;
    ret.fromPropertyTree(pt);
    return ret;
}

}
}
}
}

#endif /* FavoriteImpl_H_ */
