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
 * QueueItemImpl.h
 *
 * 
 */

#ifndef QueueItemImpl_H_
#define QueueItemImpl_H_



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
class  QueueItemImpl 
{
public:
    QueueItemImpl() = default;
    explicit QueueItemImpl(boost::property_tree::ptree const& pt);
    virtual ~QueueItemImpl() = default;

    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// QueueItemImpl members

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getExpectedBuildNumber() const;
    void setExpectedBuildNumber(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    std::string getId() const;
    void setId(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getPipeline() const;
    void setPipeline(std::string value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getQueuedTime() const;
    void setQueuedTime(int32_t value);

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
    int32_t m_ExpectedBuildNumber = 0;
    std::string m_Id = "";
    std::string m_Pipeline = "";
    int32_t m_QueuedTime = 0;
};

std::vector<QueueItemImpl> createQueueItemImplVectorFromJsonString(const std::string& json);

}
}
}
}

#endif /* QueueItemImpl_H_ */
