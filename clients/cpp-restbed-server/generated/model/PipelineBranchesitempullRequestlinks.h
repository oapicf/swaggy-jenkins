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
 * PipelineBranchesitempullRequestlinks.h
 *
 * 
 */

#ifndef PipelineBranchesitempullRequestlinks_H_
#define PipelineBranchesitempullRequestlinks_H_



#include <string>
#include <memory>

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
    PipelineBranchesitempullRequestlinks();
    virtual ~PipelineBranchesitempullRequestlinks();
    
    std::string toJsonString();
    void fromJsonString(std::string const& jsonString);

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
    std::string getClass() const;
    void setClass(std::string value);

protected:
    std::string m_Self;
    std::string m__class;
};

}
}
}
}

#endif /* PipelineBranchesitempullRequestlinks_H_ */
