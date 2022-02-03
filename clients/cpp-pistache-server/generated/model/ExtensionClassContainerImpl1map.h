/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.1
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
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
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  ExtensionClassContainerImpl1map
{
public:
    ExtensionClassContainerImpl1map();
    virtual ~ExtensionClassContainerImpl1map() = default;


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

    bool operator==(const ExtensionClassContainerImpl1map& rhs) const;
    bool operator!=(const ExtensionClassContainerImpl1map& rhs) const;

    /////////////////////////////////////////////
    /// ExtensionClassContainerImpl1map members

    /// <summary>
    /// 
    /// </summary>
    ExtensionClassImpl getIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl() const;
    void setIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(ExtensionClassImpl const& value);
    bool ioJenkinsBlueoceanServiceEmbeddedRestPipelineImplIsSet() const;
    void unsetIo_jenkins_blueocean_service_embedded_rest_PipelineImpl();
    /// <summary>
    /// 
    /// </summary>
    ExtensionClassImpl getIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl() const;
    void setIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(ExtensionClassImpl const& value);
    bool ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImplIsSet() const;
    void unsetIo_jenkins_blueocean_service_embedded_rest_MultiBranchPipelineImpl();
    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool r_classIsSet() const;
    void unset_class();

    friend void to_json(nlohmann::json& j, const ExtensionClassContainerImpl1map& o);
    friend void from_json(const nlohmann::json& j, ExtensionClassContainerImpl1map& o);
protected:
    ExtensionClassImpl m_Io_jenkins_blueocean_service_embedded_rest_PipelineImpl;
    bool m_Io_jenkins_blueocean_service_embedded_rest_PipelineImplIsSet;
    ExtensionClassImpl m_Io_jenkins_blueocean_service_embedded_rest_MultiBranchPipelineImpl;
    bool m_Io_jenkins_blueocean_service_embedded_rest_MultiBranchPipelineImplIsSet;
    std::string m__class;
    bool m__classIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* ExtensionClassContainerImpl1map_H_ */
