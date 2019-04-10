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
 * OAIComputerSet.h
 *
 * 
 */

#ifndef OAIComputerSet_H_
#define OAIComputerSet_H_

#include <QJsonObject>


#include "OAIOAIHudsonMasterComputer.h"
#include <QList>
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIComputerSet: public OAIObject {
public:
    OAIComputerSet();
    OAIComputerSet(QString json);
    ~OAIComputerSet();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIComputerSet* fromJson(QString jsonString) override;

    QString* getClass();
    void setClass(QString* _class);

    qint32 getBusyExecutors();
    void setBusyExecutors(qint32 busy_executors);

    QList<OAIHudsonMasterComputer*>* getComputer();
    void setComputer(QList<OAIHudsonMasterComputer*>* computer);

    QString* getDisplayName();
    void setDisplayName(QString* display_name);

    qint32 getTotalExecutors();
    void setTotalExecutors(qint32 total_executors);


    virtual bool isSet() override;

private:
    QString* _class;
    bool m__class_isSet;

    qint32 busy_executors;
    bool m_busy_executors_isSet;

    QList<OAIHudsonMasterComputer*>* computer;
    bool m_computer_isSet;

    QString* display_name;
    bool m_display_name_isSet;

    qint32 total_executors;
    bool m_total_executors_isSet;

};

}

#endif /* OAIComputerSet_H_ */
