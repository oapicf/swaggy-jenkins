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
 * OAIStringParameterDefinition.h
 *
 * 
 */

#ifndef OAIStringParameterDefinition_H
#define OAIStringParameterDefinition_H

#include <QJsonObject>


#include "OAIStringParameterValue.h"
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIStringParameterDefinition: public OAIObject {
public:
    OAIStringParameterDefinition();
    OAIStringParameterDefinition(QString json);
    ~OAIStringParameterDefinition() override;
    void init();

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getClass() const;
    void setClass(const QString &_class);

    OAIStringParameterValue getDefaultParameterValue() const;
    void setDefaultParameterValue(const OAIStringParameterValue &default_parameter_value);

    QString getDescription() const;
    void setDescription(const QString &description);

    QString getName() const;
    void setName(const QString &name);

    QString getType() const;
    void setType(const QString &type);

    virtual bool isSet() const override;

private:
    QString _class;
    bool m__class_isSet;

    OAIStringParameterValue default_parameter_value;
    bool m_default_parameter_value_isSet;

    QString description;
    bool m_description_isSet;

    QString name;
    bool m_name_isSet;

    QString type;
    bool m_type_isSet;

};

}

#endif // OAIStringParameterDefinition_H
