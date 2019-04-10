/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 3.2.1-SNAPSHOT.
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
    FavoriteImpl();
    virtual ~FavoriteImpl();
    
    std::string toJsonString();
    void fromJsonString(std::string const& jsonString);

    /////////////////////////////////////////////
    /// FavoriteImpl members
    
    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string value);
    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<FavoriteImpllinks> getLinks() const;
    void setLinks(std::shared_ptr<FavoriteImpllinks> value);
    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<PipelineImpl> getItem() const;
    void setItem(std::shared_ptr<PipelineImpl> value);

protected:
    std::string m__class;
    std::shared_ptr<FavoriteImpllinks> m__links;
    std::shared_ptr<PipelineImpl> m_Item;
};

}
}
}
}

#endif /* FavoriteImpl_H_ */
