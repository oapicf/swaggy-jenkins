/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 3.2.1-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * ListView.h
 *
 * 
 */

#ifndef ListView_H_
#define ListView_H_



#include <string>
#include "FreeStyleProject.h"
#include <vector>
#include <memory>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  ListView
{
public:
    ListView();
    virtual ~ListView();
    
    std::string toJsonString();
    void fromJsonString(std::string const& jsonString);

    /////////////////////////////////////////////
    /// ListView members
    
    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string value);
    /// <summary>
    /// 
    /// </summary>
    std::string getDescription() const;
    void setDescription(std::string value);
    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<FreeStyleProject>> getJobs() const;
    void setJobs(std::vector<std::shared_ptr<FreeStyleProject>> value);
    /// <summary>
    /// 
    /// </summary>
    std::string getName() const;
    void setName(std::string value);
    /// <summary>
    /// 
    /// </summary>
    std::string getUrl() const;
    void setUrl(std::string value);

protected:
    std::string m__class;
    std::string m_Description;
    std::vector<std::shared_ptr<FreeStyleProject>> m_Jobs;
    std::string m_Name;
    std::string m_Url;
};

}
}
}
}

#endif /* ListView_H_ */
