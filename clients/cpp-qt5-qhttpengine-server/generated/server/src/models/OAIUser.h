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
 * OAIUser.h
 *
 * 
 */

#ifndef OAIUser_H
#define OAIUser_H

#include <QJsonObject>


#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIUser: public OAIObject {
public:
    OAIUser();
    OAIUser(QString json);
    ~OAIUser() override;
    void init();

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getClass() const;
    void setClass(const QString &_class);

    QString getId() const;
    void setId(const QString &id);

    QString getFullName() const;
    void setFullName(const QString &full_name);

    QString getEmail() const;
    void setEmail(const QString &email);

    QString getName() const;
    void setName(const QString &name);

    virtual bool isSet() const override;

private:
    QString _class;
    bool m__class_isSet;

    QString id;
    bool m_id_isSet;

    QString full_name;
    bool m_full_name_isSet;

    QString email;
    bool m_email_isSet;

    QString name;
    bool m_name_isSet;

};

}

#endif // OAIUser_H
