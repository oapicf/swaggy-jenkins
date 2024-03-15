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
 * MultibranchPipeline.h
 *
 * 
 */

#ifndef MultibranchPipeline_H_
#define MultibranchPipeline_H_



#include <string>
#include <vector>
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
class  MultibranchPipeline 
{
public:
    MultibranchPipeline() = default;
    explicit MultibranchPipeline(boost::property_tree::ptree const& pt);
    virtual ~MultibranchPipeline() = default;

    MultibranchPipeline(const MultibranchPipeline& other) = default; // copy constructor
    MultibranchPipeline(MultibranchPipeline&& other) noexcept = default; // move constructor

    MultibranchPipeline& operator=(const MultibranchPipeline& other) = default; // copy assignment
    MultibranchPipeline& operator=(MultibranchPipeline&& other) noexcept = default; // move assignment

    std::string toJsonString(bool prettyJson = false) const;
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree() const;
    void fromPropertyTree(boost::property_tree::ptree const& pt);


    /////////////////////////////////////////////
    /// MultibranchPipeline members

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
    std::vector<std::string> getBranchNames() const;
    void setBranchNames(std::vector<std::string> value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getNumberOfFailingBranches() const;
    void setNumberOfFailingBranches(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getNumberOfFailingPullRequests() const;
    void setNumberOfFailingPullRequests(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getNumberOfSuccessfulBranches() const;
    void setNumberOfSuccessfulBranches(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getNumberOfSuccessfulPullRequests() const;
    void setNumberOfSuccessfulPullRequests(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getTotalNumberOfBranches() const;
    void setTotalNumberOfBranches(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getTotalNumberOfPullRequests() const;
    void setTotalNumberOfPullRequests(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

protected:
    std::string m_DisplayName = "";
    int32_t m_EstimatedDurationInMillis = 0;
    std::string m_LatestRun = "";
    std::string m_Name = "";
    std::string m_Organization = "";
    int32_t m_WeatherScore = 0;
    std::vector<std::string> m_BranchNames;
    int32_t m_NumberOfFailingBranches = 0;
    int32_t m_NumberOfFailingPullRequests = 0;
    int32_t m_NumberOfSuccessfulBranches = 0;
    int32_t m_NumberOfSuccessfulPullRequests = 0;
    int32_t m_TotalNumberOfBranches = 0;
    int32_t m_TotalNumberOfPullRequests = 0;
    std::string m__class = "";
};

std::vector<MultibranchPipeline> createMultibranchPipelineVectorFromJsonString(const std::string& json);

template<>
inline boost::property_tree::ptree toPt<MultibranchPipeline>(const MultibranchPipeline& val) {
    return val.toPropertyTree();
}

template<>
inline MultibranchPipeline fromPt<MultibranchPipeline>(const boost::property_tree::ptree& pt) {
    MultibranchPipeline ret;
    ret.fromPropertyTree(pt);
    return ret;
}

}
}
}
}

#endif /* MultibranchPipeline_H_ */
