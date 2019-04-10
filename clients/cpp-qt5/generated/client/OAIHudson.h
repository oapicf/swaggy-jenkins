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
 * OAIHudson.h
 *
 * 
 */

#ifndef OAIHudson_H_
#define OAIHudson_H_

#include <QJsonObject>


#include "OAIOAIAllView.h"
#include "OAIOAIFreeStyleProject.h"
#include "OAIOAIHudsonassignedLabels.h"
#include "OAIOAIUnlabeledLoadStatistics.h"
#include <QList>
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIHudson: public OAIObject {
public:
    OAIHudson();
    OAIHudson(QString json);
    ~OAIHudson();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIHudson* fromJson(QString jsonString) override;

    QString* getClass();
    void setClass(QString* _class);

    QList<OAIHudsonassignedLabels*>* getAssignedLabels();
    void setAssignedLabels(QList<OAIHudsonassignedLabels*>* assigned_labels);

    QString* getMode();
    void setMode(QString* mode);

    QString* getNodeDescription();
    void setNodeDescription(QString* node_description);

    QString* getNodeName();
    void setNodeName(QString* node_name);

    qint32 getNumExecutors();
    void setNumExecutors(qint32 num_executors);

    QString* getDescription();
    void setDescription(QString* description);

    QList<OAIFreeStyleProject*>* getJobs();
    void setJobs(QList<OAIFreeStyleProject*>* jobs);

    OAIAllView* getPrimaryView();
    void setPrimaryView(OAIAllView* primary_view);

    bool isQuietingDown();
    void setQuietingDown(bool quieting_down);

    qint32 getSlaveAgentPort();
    void setSlaveAgentPort(qint32 slave_agent_port);

    OAIUnlabeledLoadStatistics* getUnlabeledLoad();
    void setUnlabeledLoad(OAIUnlabeledLoadStatistics* unlabeled_load);

    bool isUseCrumbs();
    void setUseCrumbs(bool use_crumbs);

    bool isUseSecurity();
    void setUseSecurity(bool use_security);

    QList<OAIAllView*>* getViews();
    void setViews(QList<OAIAllView*>* views);


    virtual bool isSet() override;

private:
    QString* _class;
    bool m__class_isSet;

    QList<OAIHudsonassignedLabels*>* assigned_labels;
    bool m_assigned_labels_isSet;

    QString* mode;
    bool m_mode_isSet;

    QString* node_description;
    bool m_node_description_isSet;

    QString* node_name;
    bool m_node_name_isSet;

    qint32 num_executors;
    bool m_num_executors_isSet;

    QString* description;
    bool m_description_isSet;

    QList<OAIFreeStyleProject*>* jobs;
    bool m_jobs_isSet;

    OAIAllView* primary_view;
    bool m_primary_view_isSet;

    bool quieting_down;
    bool m_quieting_down_isSet;

    qint32 slave_agent_port;
    bool m_slave_agent_port_isSet;

    OAIUnlabeledLoadStatistics* unlabeled_load;
    bool m_unlabeled_load_isSet;

    bool use_crumbs;
    bool m_use_crumbs_isSet;

    bool use_security;
    bool m_use_security_isSet;

    QList<OAIAllView*>* views;
    bool m_views_isSet;

};

}

#endif /* OAIHudson_H_ */
