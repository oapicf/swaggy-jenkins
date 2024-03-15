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
 * OAIPipelineBranchesitem.h
 *
 * 
 */

#ifndef OAIPipelineBranchesitem_H
#define OAIPipelineBranchesitem_H

#include <QJsonObject>

#include "OAIPipelineBranchesitemlatestRun.h"
#include "OAIPipelineBranchesitempullRequest.h"
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIPipelineBranchesitemlatestRun;
class OAIPipelineBranchesitempullRequest;

class OAIPipelineBranchesitem : public OAIObject {
public:
    OAIPipelineBranchesitem();
    OAIPipelineBranchesitem(QString json);
    ~OAIPipelineBranchesitem() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getDisplayName() const;
    void setDisplayName(const QString &display_name);
    bool is_display_name_Set() const;
    bool is_display_name_Valid() const;

    qint32 getEstimatedDurationInMillis() const;
    void setEstimatedDurationInMillis(const qint32 &estimated_duration_in_millis);
    bool is_estimated_duration_in_millis_Set() const;
    bool is_estimated_duration_in_millis_Valid() const;

    QString getName() const;
    void setName(const QString &name);
    bool is_name_Set() const;
    bool is_name_Valid() const;

    qint32 getWeatherScore() const;
    void setWeatherScore(const qint32 &weather_score);
    bool is_weather_score_Set() const;
    bool is_weather_score_Valid() const;

    OAIPipelineBranchesitemlatestRun getLatestRun() const;
    void setLatestRun(const OAIPipelineBranchesitemlatestRun &latest_run);
    bool is_latest_run_Set() const;
    bool is_latest_run_Valid() const;

    QString getOrganization() const;
    void setOrganization(const QString &organization);
    bool is_organization_Set() const;
    bool is_organization_Valid() const;

    OAIPipelineBranchesitempullRequest getPullRequest() const;
    void setPullRequest(const OAIPipelineBranchesitempullRequest &pull_request);
    bool is_pull_request_Set() const;
    bool is_pull_request_Valid() const;

    qint32 getTotalNumberOfPullRequests() const;
    void setTotalNumberOfPullRequests(const qint32 &total_number_of_pull_requests);
    bool is_total_number_of_pull_requests_Set() const;
    bool is_total_number_of_pull_requests_Valid() const;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_display_name;
    bool m_display_name_isSet;
    bool m_display_name_isValid;

    qint32 m_estimated_duration_in_millis;
    bool m_estimated_duration_in_millis_isSet;
    bool m_estimated_duration_in_millis_isValid;

    QString m_name;
    bool m_name_isSet;
    bool m_name_isValid;

    qint32 m_weather_score;
    bool m_weather_score_isSet;
    bool m_weather_score_isValid;

    OAIPipelineBranchesitemlatestRun m_latest_run;
    bool m_latest_run_isSet;
    bool m_latest_run_isValid;

    QString m_organization;
    bool m_organization_isSet;
    bool m_organization_isValid;

    OAIPipelineBranchesitempullRequest m_pull_request;
    bool m_pull_request_isSet;
    bool m_pull_request_isValid;

    qint32 m_total_number_of_pull_requests;
    bool m_total_number_of_pull_requests_isSet;
    bool m_total_number_of_pull_requests_isValid;

    QString m__class;
    bool m__class_isSet;
    bool m__class_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIPipelineBranchesitem)

#endif // OAIPipelineBranchesitem_H
