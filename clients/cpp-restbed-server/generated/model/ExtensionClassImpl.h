/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
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
class  ExtensionClassImpl 
{
public:
    ExtensionClassImpl() = default;
    explicit ExtensionClassImpl(boost::property_tree::ptree const& pt);
    virtual ~ExtensionClassImpl() = default;

    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// ExtensionClassImpl members

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<ExtensionClassImpllinks> get_Links() const;
    void set_Links(std::shared_ptr<ExtensionClassImpllinks> value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::string> getClasses() const;
    void setClasses(std::vector<std::string> value);

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
    std::shared_ptr<ExtensionClassImpllinks> m__links;
    std::vector<std::string> m_Classes;
};

std::vector<ExtensionClassImpl> createExtensionClassImplVectorFromJsonString(const std::string& json);

}
}
}
}

#endif /* ExtensionClassImpl_H_ */
