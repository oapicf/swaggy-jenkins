/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAICauseUserIdCause.h
 *
 * 
 */

#ifndef OAICauseUserIdCause_H
#define OAICauseUserIdCause_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAICauseUserIdCause : public OAIObject {
public:
    OAICauseUserIdCause();
    OAICauseUserIdCause(QString json);
    ~OAICauseUserIdCause() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    QString getShortDescription() const;
    void setShortDescription(const QString &short_description);
    bool is_short_description_Set() const;
    bool is_short_description_Valid() const;

    QString getUserId() const;
    void setUserId(const QString &user_id);
    bool is_user_id_Set() const;
    bool is_user_id_Valid() const;

    QString getUserName() const;
    void setUserName(const QString &user_name);
    bool is_user_name_Set() const;
    bool is_user_name_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m__class;
    bool m__class_isSet;
    bool m__class_isValid;

    QString m_short_description;
    bool m_short_description_isSet;
    bool m_short_description_isValid;

    QString m_user_id;
    bool m_user_id_isSet;
    bool m_user_id_isValid;

    QString m_user_name;
    bool m_user_name_isSet;
    bool m_user_name_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAICauseUserIdCause)

#endif // OAICauseUserIdCause_H
