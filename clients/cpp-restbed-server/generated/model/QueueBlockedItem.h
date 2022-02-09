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
 * QueueBlockedItem.h
 *
 * 
 */

#ifndef QueueBlockedItem_H_
#define QueueBlockedItem_H_



#include <string>
#include "CauseAction.h"
#include "FreeStyleProject.h"
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
class  QueueBlockedItem 
{
public:
    QueueBlockedItem() = default;
    explicit QueueBlockedItem(boost::property_tree::ptree const& pt);
    virtual ~QueueBlockedItem() = default;

    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// QueueBlockedItem members

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<CauseAction>> getActions() const;
    void setActions(std::vector<std::shared_ptr<CauseAction>> value);

    /// <summary>
    /// 
    /// </summary>
    bool isBlocked() const;
    void setBlocked(bool value);

    /// <summary>
    /// 
    /// </summary>
    bool isBuildable() const;
    void setBuildable(bool value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getId() const;
    void setId(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getInQueueSince() const;
    void setInQueueSince(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    std::string getParams() const;
    void setParams(std::string value);

    /// <summary>
    /// 
    /// </summary>
    bool isStuck() const;
    void setStuck(bool value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<FreeStyleProject> getTask() const;
    void setTask(std::shared_ptr<FreeStyleProject> value);

    /// <summary>
    /// 
    /// </summary>
    std::string getUrl() const;
    void setUrl(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getWhy() const;
    void setWhy(std::string value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getBuildableStartMilliseconds() const;
    void setBuildableStartMilliseconds(int32_t value);

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
    std::vector<std::shared_ptr<CauseAction>> m_Actions;
    bool m_Blocked = false;
    bool m_Buildable = false;
    int32_t m_Id = 0;
    int32_t m_InQueueSince = 0;
    std::string m_Params = "";
    bool m_Stuck = false;
    std::shared_ptr<FreeStyleProject> m_Task;
    std::string m_Url = "";
    std::string m_Why = "";
    int32_t m_BuildableStartMilliseconds = 0;
};

std::vector<QueueBlockedItem> createQueueBlockedItemVectorFromJsonString(const std::string& json);

}
}
}
}

#endif /* QueueBlockedItem_H_ */
