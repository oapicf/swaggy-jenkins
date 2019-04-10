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
 * ExtensionClassContainerImpl1.h
 *
 * 
 */

#ifndef ExtensionClassContainerImpl1_H_
#define ExtensionClassContainerImpl1_H_



#include "ExtensionClassContainerImpl1map.h"
#include <string>
#include "ExtensionClassContainerImpl1links.h"
#include <memory>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  ExtensionClassContainerImpl1
{
public:
    ExtensionClassContainerImpl1();
    virtual ~ExtensionClassContainerImpl1();
    
    std::string toJsonString();
    void fromJsonString(std::string const& jsonString);

    /////////////////////////////////////////////
    /// ExtensionClassContainerImpl1 members
    
    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string value);
    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<ExtensionClassContainerImpl1links> getLinks() const;
    void setLinks(std::shared_ptr<ExtensionClassContainerImpl1links> value);
    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<ExtensionClassContainerImpl1map> getMap() const;
    void setMap(std::shared_ptr<ExtensionClassContainerImpl1map> value);

protected:
    std::string m__class;
    std::shared_ptr<ExtensionClassContainerImpl1links> m__links;
    std::shared_ptr<ExtensionClassContainerImpl1map> m_map;
};

}
}
}
}

#endif /* ExtensionClassContainerImpl1_H_ */
