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
 * CauseUserIdCause.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_CauseUserIdCause_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_CauseUserIdCause_H_


#include "ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  CauseUserIdCause
    : public ModelBase
{
public:
    CauseUserIdCause();
    virtual ~CauseUserIdCause();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// CauseUserIdCause members

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getClass() const;
    bool r_classIsSet() const;
    void unset_class();

    void setClass(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getShortDescription() const;
    bool shortDescriptionIsSet() const;
    void unsetShortDescription();

    void setShortDescription(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getUserId() const;
    bool userIdIsSet() const;
    void unsetUserId();

    void setUserId(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getUserName() const;
    bool userNameIsSet() const;
    void unsetUserName();

    void setUserName(const utility::string_t& value);


protected:
    utility::string_t m__class;
    bool m__classIsSet;
    utility::string_t m_ShortDescription;
    bool m_ShortDescriptionIsSet;
    utility::string_t m_UserId;
    bool m_UserIdIsSet;
    utility::string_t m_UserName;
    bool m_UserNameIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_CauseUserIdCause_H_ */
