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
 * OAIClassesByClass.h
 *
 * 
 */

#ifndef OAIClassesByClass_H_
#define OAIClassesByClass_H_

#include <QJsonObject>


#include <QList>
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIClassesByClass: public OAIObject {
public:
    OAIClassesByClass();
    OAIClassesByClass(QString json);
    ~OAIClassesByClass();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIClassesByClass* fromJson(QString jsonString) override;

    QList<QString*>* getClasses();
    void setClasses(QList<QString*>* classes);

    QString* getClass();
    void setClass(QString* _class);


    virtual bool isSet() override;

private:
    QList<QString*>* classes;
    bool m_classes_isSet;

    QString* _class;
    bool m__class_isSet;

};

}

#endif /* OAIClassesByClass_H_ */
