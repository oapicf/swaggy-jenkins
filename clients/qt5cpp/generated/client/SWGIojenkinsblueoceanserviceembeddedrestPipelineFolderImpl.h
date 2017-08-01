/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 0.1.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.h
 * 
 * 
 */

#ifndef SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl_H_
#define SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl_H_

#include <QJsonObject>


#include <QString>

#include "SWGObject.h"


namespace Swagger {

class SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl: public SWGObject {
public:
    SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl();
    SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl(QString* json);
    virtual ~SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl();
    void init();
    void cleanup();

    QString asJson ();
    QJsonObject* asJsonObject();
    void fromJsonObject(QJsonObject &json);
    SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl* fromJson(QString &jsonString);

    QString* getClass();
    void setClass(QString* _class);

    QString* getDisplayName();
    void setDisplayName(QString* display_name);

    QString* getFullName();
    void setFullName(QString* full_name);

    QString* getName();
    void setName(QString* name);

    QString* getOrganization();
    void setOrganization(QString* organization);

    qint32 getNumberOfFolders();
    void setNumberOfFolders(qint32 number_of_folders);

    qint32 getNumberOfPipelines();
    void setNumberOfPipelines(qint32 number_of_pipelines);


private:
    QString* _class;
    QString* display_name;
    QString* full_name;
    QString* name;
    QString* organization;
    qint32 number_of_folders;
    qint32 number_of_pipelines;
};

}

#endif /* SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl_H_ */