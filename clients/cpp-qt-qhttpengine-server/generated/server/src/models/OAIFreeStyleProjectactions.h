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
 * OAIFreeStyleProjectactions.h
 *
 * 
 */

#ifndef OAIFreeStyleProjectactions_H
#define OAIFreeStyleProjectactions_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIFreeStyleProjectactions : public OAIObject {
public:
    OAIFreeStyleProjectactions();
    OAIFreeStyleProjectactions(QString json);
    ~OAIFreeStyleProjectactions() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString _class;
    bool m__class_isSet;
    bool m__class_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIFreeStyleProjectactions)

#endif // OAIFreeStyleProjectactions_H
