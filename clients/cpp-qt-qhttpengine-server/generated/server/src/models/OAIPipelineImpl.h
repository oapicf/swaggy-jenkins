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
 * OAIPipelineImpl.h
 *
 * 
 */

#ifndef OAIPipelineImpl_H
#define OAIPipelineImpl_H

#include <QJsonObject>

#include "OAIPipelineImpllinks.h"
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIPipelineImpl : public OAIObject {
public:
    OAIPipelineImpl();
    OAIPipelineImpl(QString json);
    ~OAIPipelineImpl() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    QString getDisplayName() const;
    void setDisplayName(const QString &display_name);
    bool is_display_name_Set() const;
    bool is_display_name_Valid() const;

    qint32 getEstimatedDurationInMillis() const;
    void setEstimatedDurationInMillis(const qint32 &estimated_duration_in_millis);
    bool is_estimated_duration_in_millis_Set() const;
    bool is_estimated_duration_in_millis_Valid() const;

    QString getFullName() const;
    void setFullName(const QString &full_name);
    bool is_full_name_Set() const;
    bool is_full_name_Valid() const;

    QString getLatestRun() const;
    void setLatestRun(const QString &latest_run);
    bool is_latest_run_Set() const;
    bool is_latest_run_Valid() const;

    QString getName() const;
    void setName(const QString &name);
    bool is_name_Set() const;
    bool is_name_Valid() const;

    QString getOrganization() const;
    void setOrganization(const QString &organization);
    bool is_organization_Set() const;
    bool is_organization_Valid() const;

    qint32 getWeatherScore() const;
    void setWeatherScore(const qint32 &weather_score);
    bool is_weather_score_Set() const;
    bool is_weather_score_Valid() const;

    OAIPipelineImpllinks getLinks() const;
    void setLinks(const OAIPipelineImpllinks &_links);
    bool is__links_Set() const;
    bool is__links_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString _class;
    bool m__class_isSet;
    bool m__class_isValid;

    QString display_name;
    bool m_display_name_isSet;
    bool m_display_name_isValid;

    qint32 estimated_duration_in_millis;
    bool m_estimated_duration_in_millis_isSet;
    bool m_estimated_duration_in_millis_isValid;

    QString full_name;
    bool m_full_name_isSet;
    bool m_full_name_isValid;

    QString latest_run;
    bool m_latest_run_isSet;
    bool m_latest_run_isValid;

    QString name;
    bool m_name_isSet;
    bool m_name_isValid;

    QString organization;
    bool m_organization_isSet;
    bool m_organization_isValid;

    qint32 weather_score;
    bool m_weather_score_isSet;
    bool m_weather_score_isValid;

    OAIPipelineImpllinks _links;
    bool m__links_isSet;
    bool m__links_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIPipelineImpl)

#endif // OAIPipelineImpl_H
