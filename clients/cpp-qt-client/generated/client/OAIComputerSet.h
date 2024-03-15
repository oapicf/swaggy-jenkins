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
 * OAIComputerSet.h
 *
 * 
 */

#ifndef OAIComputerSet_H
#define OAIComputerSet_H

#include <QJsonObject>

#include "OAIHudsonMasterComputer.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIHudsonMasterComputer;

class OAIComputerSet : public OAIObject {
public:
    OAIComputerSet();
    OAIComputerSet(QString json);
    ~OAIComputerSet() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    qint32 getBusyExecutors() const;
    void setBusyExecutors(const qint32 &busy_executors);
    bool is_busy_executors_Set() const;
    bool is_busy_executors_Valid() const;

    QList<OAIHudsonMasterComputer> getComputer() const;
    void setComputer(const QList<OAIHudsonMasterComputer> &computer);
    bool is_computer_Set() const;
    bool is_computer_Valid() const;

    QString getDisplayName() const;
    void setDisplayName(const QString &display_name);
    bool is_display_name_Set() const;
    bool is_display_name_Valid() const;

    qint32 getTotalExecutors() const;
    void setTotalExecutors(const qint32 &total_executors);
    bool is_total_executors_Set() const;
    bool is_total_executors_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m__class;
    bool m__class_isSet;
    bool m__class_isValid;

    qint32 m_busy_executors;
    bool m_busy_executors_isSet;
    bool m_busy_executors_isValid;

    QList<OAIHudsonMasterComputer> m_computer;
    bool m_computer_isSet;
    bool m_computer_isValid;

    QString m_display_name;
    bool m_display_name_isSet;
    bool m_display_name_isValid;

    qint32 m_total_executors;
    bool m_total_executors_isSet;
    bool m_total_executors_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIComputerSet)

#endif // OAIComputerSet_H
