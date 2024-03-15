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
 * OAIBranchImplpermissions.h
 *
 * 
 */

#ifndef OAIBranchImplpermissions_H
#define OAIBranchImplpermissions_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIBranchImplpermissions : public OAIObject {
public:
    OAIBranchImplpermissions();
    OAIBranchImplpermissions(QString json);
    ~OAIBranchImplpermissions() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    bool isCreate() const;
    void setCreate(const bool &create);
    bool is_create_Set() const;
    bool is_create_Valid() const;

    bool isRead() const;
    void setRead(const bool &read);
    bool is_read_Set() const;
    bool is_read_Valid() const;

    bool isStart() const;
    void setStart(const bool &start);
    bool is_start_Set() const;
    bool is_start_Valid() const;

    bool isStop() const;
    void setStop(const bool &stop);
    bool is_stop_Set() const;
    bool is_stop_Valid() const;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    bool m_create;
    bool m_create_isSet;
    bool m_create_isValid;

    bool m_read;
    bool m_read_isSet;
    bool m_read_isValid;

    bool m_start;
    bool m_start_isSet;
    bool m_start_isValid;

    bool m_stop;
    bool m_stop_isSet;
    bool m_stop_isValid;

    QString m__class;
    bool m__class_isSet;
    bool m__class_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIBranchImplpermissions)

#endif // OAIBranchImplpermissions_H
