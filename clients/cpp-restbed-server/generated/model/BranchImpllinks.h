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
 * BranchImpllinks.h
 *
 * 
 */

#ifndef BranchImpllinks_H_
#define BranchImpllinks_H_



#include <string>
#include "Link.h"
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
class  BranchImpllinks 
{
public:
    BranchImpllinks() = default;
    explicit BranchImpllinks(boost::property_tree::ptree const& pt);
    virtual ~BranchImpllinks() = default;

    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// BranchImpllinks members

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Link> getSelf() const;
    void setSelf(std::shared_ptr<Link> value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Link> getActions() const;
    void setActions(std::shared_ptr<Link> value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Link> getRuns() const;
    void setRuns(std::shared_ptr<Link> value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Link> getQueue() const;
    void setQueue(std::shared_ptr<Link> value);

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
    std::shared_ptr<Link> m_Self;
    std::shared_ptr<Link> m_Actions;
    std::shared_ptr<Link> m_Runs;
    std::shared_ptr<Link> m_Queue;
    std::string m__class = "";
};

std::vector<BranchImpllinks> createBranchImpllinksVectorFromJsonString(const std::string& json);

}
}
}
}

#endif /* BranchImpllinks_H_ */
