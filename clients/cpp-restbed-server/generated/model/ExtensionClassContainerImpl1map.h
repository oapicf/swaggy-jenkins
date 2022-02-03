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
 * ExtensionClassContainerImpl1map.h
 *
 * 
 */

#ifndef ExtensionClassContainerImpl1map_H_
#define ExtensionClassContainerImpl1map_H_



#include <string>
#include "ExtensionClassImpl.h"
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
class  ExtensionClassContainerImpl1map 
{
public:
    ExtensionClassContainerImpl1map() = default;
    explicit ExtensionClassContainerImpl1map(boost::property_tree::ptree const& pt);
    virtual ~ExtensionClassContainerImpl1map() = default;

    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// ExtensionClassContainerImpl1map members

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<ExtensionClassImpl> getIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl() const;
    void setIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(std::shared_ptr<ExtensionClassImpl> value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<ExtensionClassImpl> getIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl() const;
    void setIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(std::shared_ptr<ExtensionClassImpl> value);

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

protected:
    //////////////////////////////////////
    // Override these for customization //
    //////////////////////////////////////

    virtual std::string toJsonString_internal(bool prettyJson = false);
    virtual void fromJsonString_internal(std::string const& jsonString);
    virtual boost::property_tree::ptree toPropertyTree_internal();
    virtual void fromPropertyTree_internal(boost::property_tree::ptree const& pt);


protected:
    std::shared_ptr<ExtensionClassImpl> m_Io_jenkins_blueocean_service_embedded_rest_PipelineImpl;
    std::shared_ptr<ExtensionClassImpl> m_Io_jenkins_blueocean_service_embedded_rest_MultiBranchPipelineImpl;
    std::string m__class = "";
};

std::vector<ExtensionClassContainerImpl1map> createExtensionClassContainerImpl1mapVectorFromJsonString(const std::string& json);

}
}
}
}

#endif /* ExtensionClassContainerImpl1map_H_ */
