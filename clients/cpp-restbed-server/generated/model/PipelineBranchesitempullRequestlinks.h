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
 * PipelineBranchesitempullRequestlinks.h
 *
 * 
 */

#ifndef PipelineBranchesitempullRequestlinks_H_
#define PipelineBranchesitempullRequestlinks_H_



#include <string>
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
class  PipelineBranchesitempullRequestlinks 
{
public:
    PipelineBranchesitempullRequestlinks() = default;
    explicit PipelineBranchesitempullRequestlinks(boost::property_tree::ptree const& pt);
    virtual ~PipelineBranchesitempullRequestlinks() = default;

    PipelineBranchesitempullRequestlinks(const PipelineBranchesitempullRequestlinks& other) = default; // copy constructor
    PipelineBranchesitempullRequestlinks(PipelineBranchesitempullRequestlinks&& other) noexcept = default; // move constructor

    PipelineBranchesitempullRequestlinks& operator=(const PipelineBranchesitempullRequestlinks& other) = default; // copy assignment
    PipelineBranchesitempullRequestlinks& operator=(PipelineBranchesitempullRequestlinks&& other) noexcept = default; // move assignment

    std::string toJsonString(bool prettyJson = false) const;
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree() const;
    void fromPropertyTree(boost::property_tree::ptree const& pt);


    /////////////////////////////////////////////
    /// PipelineBranchesitempullRequestlinks members

    /// <summary>
    /// 
    /// </summary>
    std::string getSelf() const;
    void setSelf(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

protected:
    std::string m_Self = "";
    std::string m__class = "";
};

std::vector<PipelineBranchesitempullRequestlinks> createPipelineBranchesitempullRequestlinksVectorFromJsonString(const std::string& json);

template<>
inline boost::property_tree::ptree toPt<PipelineBranchesitempullRequestlinks>(const PipelineBranchesitempullRequestlinks& val) {
    return val.toPropertyTree();
}

template<>
inline PipelineBranchesitempullRequestlinks fromPt<PipelineBranchesitempullRequestlinks>(const boost::property_tree::ptree& pt) {
    PipelineBranchesitempullRequestlinks ret;
    ret.fromPropertyTree(pt);
    return ret;
}

}
}
}
}

#endif /* PipelineBranchesitempullRequestlinks_H_ */
