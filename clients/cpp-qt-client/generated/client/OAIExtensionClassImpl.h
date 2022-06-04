/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIExtensionClassImpl.h
 *
 * 
 */

#ifndef OAIExtensionClassImpl_H
#define OAIExtensionClassImpl_H

#include <QJsonObject>

#include "OAIExtensionClassImpllinks.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIExtensionClassImpllinks;

class OAIExtensionClassImpl : public OAIObject {
public:
    OAIExtensionClassImpl();
    OAIExtensionClassImpl(QString json);
    ~OAIExtensionClassImpl() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    OAIExtensionClassImpllinks getLinks() const;
    void setLinks(const OAIExtensionClassImpllinks &_links);
    bool is__links_Set() const;
    bool is__links_Valid() const;

    QList<QString> getClasses() const;
    void setClasses(const QList<QString> &classes);
    bool is_classes_Set() const;
    bool is_classes_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString _class;
    bool m__class_isSet;
    bool m__class_isValid;

    OAIExtensionClassImpllinks _links;
    bool m__links_isSet;
    bool m__links_isValid;

    QList<QString> classes;
    bool m_classes_isSet;
    bool m_classes_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIExtensionClassImpl)

#endif // OAIExtensionClassImpl_H
