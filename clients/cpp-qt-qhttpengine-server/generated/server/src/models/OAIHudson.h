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
 * OAIHudson.h
 *
 * 
 */

#ifndef OAIHudson_H
#define OAIHudson_H

#include <QJsonObject>

#include "OAIAllView.h"
#include "OAIFreeStyleProject.h"
#include "OAIHudsonassignedLabels.h"
#include "OAIUnlabeledLoadStatistics.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIHudson : public OAIObject {
public:
    OAIHudson();
    OAIHudson(QString json);
    ~OAIHudson() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    QList<OAIHudsonassignedLabels> getAssignedLabels() const;
    void setAssignedLabels(const QList<OAIHudsonassignedLabels> &assigned_labels);
    bool is_assigned_labels_Set() const;
    bool is_assigned_labels_Valid() const;

    QString getMode() const;
    void setMode(const QString &mode);
    bool is_mode_Set() const;
    bool is_mode_Valid() const;

    QString getNodeDescription() const;
    void setNodeDescription(const QString &node_description);
    bool is_node_description_Set() const;
    bool is_node_description_Valid() const;

    QString getNodeName() const;
    void setNodeName(const QString &node_name);
    bool is_node_name_Set() const;
    bool is_node_name_Valid() const;

    qint32 getNumExecutors() const;
    void setNumExecutors(const qint32 &num_executors);
    bool is_num_executors_Set() const;
    bool is_num_executors_Valid() const;

    QString getDescription() const;
    void setDescription(const QString &description);
    bool is_description_Set() const;
    bool is_description_Valid() const;

    QList<OAIFreeStyleProject> getJobs() const;
    void setJobs(const QList<OAIFreeStyleProject> &jobs);
    bool is_jobs_Set() const;
    bool is_jobs_Valid() const;

    OAIAllView getPrimaryView() const;
    void setPrimaryView(const OAIAllView &primary_view);
    bool is_primary_view_Set() const;
    bool is_primary_view_Valid() const;

    bool isQuietingDown() const;
    void setQuietingDown(const bool &quieting_down);
    bool is_quieting_down_Set() const;
    bool is_quieting_down_Valid() const;

    qint32 getSlaveAgentPort() const;
    void setSlaveAgentPort(const qint32 &slave_agent_port);
    bool is_slave_agent_port_Set() const;
    bool is_slave_agent_port_Valid() const;

    OAIUnlabeledLoadStatistics getUnlabeledLoad() const;
    void setUnlabeledLoad(const OAIUnlabeledLoadStatistics &unlabeled_load);
    bool is_unlabeled_load_Set() const;
    bool is_unlabeled_load_Valid() const;

    bool isUseCrumbs() const;
    void setUseCrumbs(const bool &use_crumbs);
    bool is_use_crumbs_Set() const;
    bool is_use_crumbs_Valid() const;

    bool isUseSecurity() const;
    void setUseSecurity(const bool &use_security);
    bool is_use_security_Set() const;
    bool is_use_security_Valid() const;

    QList<OAIAllView> getViews() const;
    void setViews(const QList<OAIAllView> &views);
    bool is_views_Set() const;
    bool is_views_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString _class;
    bool m__class_isSet;
    bool m__class_isValid;

    QList<OAIHudsonassignedLabels> assigned_labels;
    bool m_assigned_labels_isSet;
    bool m_assigned_labels_isValid;

    QString mode;
    bool m_mode_isSet;
    bool m_mode_isValid;

    QString node_description;
    bool m_node_description_isSet;
    bool m_node_description_isValid;

    QString node_name;
    bool m_node_name_isSet;
    bool m_node_name_isValid;

    qint32 num_executors;
    bool m_num_executors_isSet;
    bool m_num_executors_isValid;

    QString description;
    bool m_description_isSet;
    bool m_description_isValid;

    QList<OAIFreeStyleProject> jobs;
    bool m_jobs_isSet;
    bool m_jobs_isValid;

    OAIAllView primary_view;
    bool m_primary_view_isSet;
    bool m_primary_view_isValid;

    bool quieting_down;
    bool m_quieting_down_isSet;
    bool m_quieting_down_isValid;

    qint32 slave_agent_port;
    bool m_slave_agent_port_isSet;
    bool m_slave_agent_port_isValid;

    OAIUnlabeledLoadStatistics unlabeled_load;
    bool m_unlabeled_load_isSet;
    bool m_unlabeled_load_isValid;

    bool use_crumbs;
    bool m_use_crumbs_isSet;
    bool m_use_crumbs_isValid;

    bool use_security;
    bool m_use_security_isSet;
    bool m_use_security_isValid;

    QList<OAIAllView> views;
    bool m_views_isSet;
    bool m_views_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIHudson)

#endif // OAIHudson_H
