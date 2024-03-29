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
 * GithubContent.h
 *
 * 
 */

#ifndef GithubContent_H_
#define GithubContent_H_



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
class  GithubContent 
{
public:
    GithubContent() = default;
    explicit GithubContent(boost::property_tree::ptree const& pt);
    virtual ~GithubContent() = default;

    GithubContent(const GithubContent& other) = default; // copy constructor
    GithubContent(GithubContent&& other) noexcept = default; // move constructor

    GithubContent& operator=(const GithubContent& other) = default; // copy assignment
    GithubContent& operator=(GithubContent&& other) noexcept = default; // move assignment

    std::string toJsonString(bool prettyJson = false) const;
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree() const;
    void fromPropertyTree(boost::property_tree::ptree const& pt);


    /////////////////////////////////////////////
    /// GithubContent members

    /// <summary>
    /// 
    /// </summary>
    std::string getName() const;
    void setName(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getSha() const;
    void setSha(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getRepo() const;
    void setRepo(std::string value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getSize() const;
    void setSize(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    std::string getOwner() const;
    void setOwner(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getPath() const;
    void setPath(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getBase64Data() const;
    void setBase64Data(std::string value);

protected:
    std::string m_Name = "";
    std::string m_Sha = "";
    std::string m__class = "";
    std::string m_Repo = "";
    int32_t m_Size = 0;
    std::string m_Owner = "";
    std::string m_Path = "";
    std::string m_Base64Data = "";
};

std::vector<GithubContent> createGithubContentVectorFromJsonString(const std::string& json);

template<>
inline boost::property_tree::ptree toPt<GithubContent>(const GithubContent& val) {
    return val.toPropertyTree();
}

template<>
inline GithubContent fromPt<GithubContent>(const boost::property_tree::ptree& pt) {
    GithubContent ret;
    ret.fromPropertyTree(pt);
    return ret;
}

}
}
}
}

#endif /* GithubContent_H_ */
