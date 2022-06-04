/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 6.0.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * PipelineImpl.h
 *
 * 
 */

#ifndef PipelineImpl_H_
#define PipelineImpl_H_



#include "PipelineImpllinks.h"
#include <string>
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
class  PipelineImpl 
{
public:
    PipelineImpl() = default;
    explicit PipelineImpl(boost::property_tree::ptree const& pt);
    virtual ~PipelineImpl() = default;

    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// PipelineImpl members

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getDisplayName() const;
    void setDisplayName(std::string value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getEstimatedDurationInMillis() const;
    void setEstimatedDurationInMillis(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    std::string getFullName() const;
    void setFullName(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getLatestRun() const;
    void setLatestRun(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getName() const;
    void setName(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getOrganization() const;
    void setOrganization(std::string value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getWeatherScore() const;
    void setWeatherScore(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<PipelineImpllinks> get_Links() const;
    void set_Links(std::shared_ptr<PipelineImpllinks> value);

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
    std::string m_DisplayName = "";
    int32_t m_EstimatedDurationInMillis = 0;
    std::string m_FullName = "";
    std::string m_LatestRun = "";
    std::string m_Name = "";
    std::string m_Organization = "";
    int32_t m_WeatherScore = 0;
    std::shared_ptr<PipelineImpllinks> m__links;
};

std::vector<PipelineImpl> createPipelineImplVectorFromJsonString(const std::string& json);

}
}
}
}

#endif /* PipelineImpl_H_ */
