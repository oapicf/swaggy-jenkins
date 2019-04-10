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
 * OAIGithubScm.h
 *
 * 
 */

#ifndef OAIGithubScm_H_
#define OAIGithubScm_H_

#include <QJsonObject>


#include "OAIOAIGithubScmlinks.h"
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIGithubScm: public OAIObject {
public:
    OAIGithubScm();
    OAIGithubScm(QString json);
    ~OAIGithubScm();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIGithubScm* fromJson(QString jsonString) override;

    QString* getClass();
    void setClass(QString* _class);

    OAIGithubScmlinks* getLinks();
    void setLinks(OAIGithubScmlinks* _links);

    QString* getCredentialId();
    void setCredentialId(QString* credential_id);

    QString* getId();
    void setId(QString* id);

    QString* getUri();
    void setUri(QString* uri);


    virtual bool isSet() override;

private:
    QString* _class;
    bool m__class_isSet;

    OAIGithubScmlinks* _links;
    bool m__links_isSet;

    QString* credential_id;
    bool m_credential_id_isSet;

    QString* id;
    bool m_id_isSet;

    QString* uri;
    bool m_uri_isSet;

};

}

#endif /* OAIGithubScm_H_ */
