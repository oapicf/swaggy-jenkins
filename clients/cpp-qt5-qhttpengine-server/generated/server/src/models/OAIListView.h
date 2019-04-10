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
 * OAIListView.h
 *
 * 
 */

#ifndef OAIListView_H
#define OAIListView_H

#include <QJsonObject>


#include "OAIFreeStyleProject.h"
#include <QList>
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIListView: public OAIObject {
public:
    OAIListView();
    OAIListView(QString json);
    ~OAIListView() override;
    void init();

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getClass() const;
    void setClass(const QString &_class);

    QString getDescription() const;
    void setDescription(const QString &description);

    QList<OAIFreeStyleProject> getJobs() const;
    void setJobs(const QList<OAIFreeStyleProject> &jobs);

    QString getName() const;
    void setName(const QString &name);

    QString getUrl() const;
    void setUrl(const QString &url);

    virtual bool isSet() const override;

private:
    QString _class;
    bool m__class_isSet;

    QString description;
    bool m_description_isSet;

    QList<OAIFreeStyleProject> jobs;
    bool m_jobs_isSet;

    QString name;
    bool m_name_isSet;

    QString url;
    bool m_url_isSet;

};

}

#endif // OAIListView_H
