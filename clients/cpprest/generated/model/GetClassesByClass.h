/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 0.1.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * GetClassesByClass.h
 *
 * 
 */

#ifndef GetClassesByClass_H_
#define GetClassesByClass_H_


#include "ModelBase.h"

#include <cpprest/details/basic_types.h>
#include <vector>

namespace io {
namespace swagger {
namespace client {
namespace model {

/// <summary>
/// 
/// </summary>
class  GetClassesByClass
    : public ModelBase
{
public:
    GetClassesByClass();
    virtual ~GetClassesByClass();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// GetClassesByClass members

    /// <summary>
    /// 
    /// </summary>
    std::vector<utility::string_t>& getClasses();
    bool classesIsSet() const;
    void unsetClasses();
    /// <summary>
    /// 
    /// </summary>
    utility::string_t getClass() const;
    void setClass(utility::string_t value);
    bool _classIsSet() const;
    void unset_class();

protected:
    std::vector<utility::string_t> m_Classes;
    bool m_ClassesIsSet;
utility::string_t m__class;
    bool m__classIsSet;
};

}
}
}
}

#endif /* GetClassesByClass_H_ */