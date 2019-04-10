/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* OpenAPI spec version: 1.1.1
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
/*
 * HudsonMasterComputerexecutors.h
 *
 * 
 */

#ifndef HudsonMasterComputerexecutors_H_
#define HudsonMasterComputerexecutors_H_


#include "ModelBase.h"

#include "FreeStyleBuild.h"
#include <string>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  HudsonMasterComputerexecutors
    : public ModelBase
{
public:
    HudsonMasterComputerexecutors();
    virtual ~HudsonMasterComputerexecutors();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    nlohmann::json toJson() const override;
    void fromJson(nlohmann::json& json) override;

    /////////////////////////////////////////////
    /// HudsonMasterComputerexecutors members

    /// <summary>
    /// 
    /// </summary>
    FreeStyleBuild getCurrentExecutable() const;
    void setCurrentExecutable(FreeStyleBuild const& value);
    bool currentExecutableIsSet() const;
    void unsetCurrentExecutable();
    /// <summary>
    /// 
    /// </summary>
    bool isIdle() const;
    void setIdle(bool const value);
    bool idleIsSet() const;
    void unsetIdle();
    /// <summary>
    /// 
    /// </summary>
    bool isLikelyStuck() const;
    void setLikelyStuck(bool const value);
    bool likelyStuckIsSet() const;
    void unsetLikelyStuck();
    /// <summary>
    /// 
    /// </summary>
    int32_t getNumber() const;
    void setNumber(int32_t const value);
    bool numberIsSet() const;
    void unsetnumber();
    /// <summary>
    /// 
    /// </summary>
    int32_t getProgress() const;
    void setProgress(int32_t const value);
    bool progressIsSet() const;
    void unsetProgress();
    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool classIsSet() const;
    void unset_class();

protected:
    FreeStyleBuild m_CurrentExecutable;
    bool m_CurrentExecutableIsSet;
    bool m_Idle;
    bool m_IdleIsSet;
    bool m_LikelyStuck;
    bool m_LikelyStuckIsSet;
    int32_t m_number;
    bool m_numberIsSet;
    int32_t m_Progress;
    bool m_ProgressIsSet;
    std::string m__class;
    bool m__classIsSet;
};

}
}
}
}

#endif /* HudsonMasterComputerexecutors_H_ */
