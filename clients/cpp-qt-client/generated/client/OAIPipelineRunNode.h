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
 * OAIPipelineRunNode.h
 *
 * 
 */

#ifndef OAIPipelineRunNode_H
#define OAIPipelineRunNode_H

#include <QJsonObject>

#include "OAIPipelineRunNodeedges.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIPipelineRunNodeedges;

class OAIPipelineRunNode : public OAIObject {
public:
    OAIPipelineRunNode();
    OAIPipelineRunNode(QString json);
    ~OAIPipelineRunNode() override;

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

    qint32 getDurationInMillis() const;
    void setDurationInMillis(const qint32 &duration_in_millis);
    bool is_duration_in_millis_Set() const;
    bool is_duration_in_millis_Valid() const;

    QList<OAIPipelineRunNodeedges> getEdges() const;
    void setEdges(const QList<OAIPipelineRunNodeedges> &edges);
    bool is_edges_Set() const;
    bool is_edges_Valid() const;

    QString getId() const;
    void setId(const QString &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QString getResult() const;
    void setResult(const QString &result);
    bool is_result_Set() const;
    bool is_result_Valid() const;

    QString getStartTime() const;
    void setStartTime(const QString &start_time);
    bool is_start_time_Set() const;
    bool is_start_time_Valid() const;

    QString getState() const;
    void setState(const QString &state);
    bool is_state_Set() const;
    bool is_state_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m__class;
    bool m__class_isSet;
    bool m__class_isValid;

    QString m_display_name;
    bool m_display_name_isSet;
    bool m_display_name_isValid;

    qint32 m_duration_in_millis;
    bool m_duration_in_millis_isSet;
    bool m_duration_in_millis_isValid;

    QList<OAIPipelineRunNodeedges> m_edges;
    bool m_edges_isSet;
    bool m_edges_isValid;

    QString m_id;
    bool m_id_isSet;
    bool m_id_isValid;

    QString m_result;
    bool m_result_isSet;
    bool m_result_isValid;

    QString m_start_time;
    bool m_start_time_isSet;
    bool m_start_time_isValid;

    QString m_state;
    bool m_state_isSet;
    bool m_state_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIPipelineRunNode)

#endif // OAIPipelineRunNode_H
