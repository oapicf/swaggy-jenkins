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
 * OAIGithubRepositorylinks.h
 *
 * 
 */

#ifndef OAIGithubRepositorylinks_H_
#define OAIGithubRepositorylinks_H_

#include <QJsonObject>


#include "OAIOAILink.h"
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIGithubRepositorylinks: public OAIObject {
public:
    OAIGithubRepositorylinks();
    OAIGithubRepositorylinks(QString json);
    ~OAIGithubRepositorylinks();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIGithubRepositorylinks* fromJson(QString jsonString) override;

    OAILink* getSelf();
    void setSelf(OAILink* self);

    QString* getClass();
    void setClass(QString* _class);


    virtual bool isSet() override;

private:
    OAILink* self;
    bool m_self_isSet;

    QString* _class;
    bool m__class_isSet;

};

}

#endif /* OAIGithubRepositorylinks_H_ */
