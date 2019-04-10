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
 * OAIBranchImpl.h
 *
 * 
 */

#ifndef OAIBranchImpl_H_
#define OAIBranchImpl_H_

#include <QJsonObject>


#include "OAIOAIBranchImpllinks.h"
#include "OAIOAIBranchImplpermissions.h"
#include "OAIOAIPipelineRunImpl.h"
#include "OAIOAIStringParameterDefinition.h"
#include <QList>
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIBranchImpl: public OAIObject {
public:
    OAIBranchImpl();
    OAIBranchImpl(QString json);
    ~OAIBranchImpl();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIBranchImpl* fromJson(QString jsonString) override;

    QString* getClass();
    void setClass(QString* _class);

    QString* getDisplayName();
    void setDisplayName(QString* display_name);

    qint32 getEstimatedDurationInMillis();
    void setEstimatedDurationInMillis(qint32 estimated_duration_in_millis);

    QString* getFullDisplayName();
    void setFullDisplayName(QString* full_display_name);

    QString* getFullName();
    void setFullName(QString* full_name);

    QString* getName();
    void setName(QString* name);

    QString* getOrganization();
    void setOrganization(QString* organization);

    QList<OAIStringParameterDefinition*>* getParameters();
    void setParameters(QList<OAIStringParameterDefinition*>* parameters);

    OAIBranchImplpermissions* getPermissions();
    void setPermissions(OAIBranchImplpermissions* permissions);

    qint32 getWeatherScore();
    void setWeatherScore(qint32 weather_score);

    QString* getPullRequest();
    void setPullRequest(QString* pull_request);

    OAIBranchImpllinks* getLinks();
    void setLinks(OAIBranchImpllinks* _links);

    OAIPipelineRunImpl* getLatestRun();
    void setLatestRun(OAIPipelineRunImpl* latest_run);


    virtual bool isSet() override;

private:
    QString* _class;
    bool m__class_isSet;

    QString* display_name;
    bool m_display_name_isSet;

    qint32 estimated_duration_in_millis;
    bool m_estimated_duration_in_millis_isSet;

    QString* full_display_name;
    bool m_full_display_name_isSet;

    QString* full_name;
    bool m_full_name_isSet;

    QString* name;
    bool m_name_isSet;

    QString* organization;
    bool m_organization_isSet;

    QList<OAIStringParameterDefinition*>* parameters;
    bool m_parameters_isSet;

    OAIBranchImplpermissions* permissions;
    bool m_permissions_isSet;

    qint32 weather_score;
    bool m_weather_score_isSet;

    QString* pull_request;
    bool m_pull_request_isSet;

    OAIBranchImpllinks* _links;
    bool m__links_isSet;

    OAIPipelineRunImpl* latest_run;
    bool m_latest_run_isSet;

};

}

#endif /* OAIBranchImpl_H_ */
