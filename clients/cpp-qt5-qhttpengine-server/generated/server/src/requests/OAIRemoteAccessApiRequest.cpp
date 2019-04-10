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

#include <QJsonArray>
#include <QJsonDocument>
#include <QJsonObject>
#include <QVariantMap>
#include <QDebug>

#include "OAIHelpers.h"
#include "OAIRemoteAccessApiRequest.h"

namespace OpenAPI {

OAIRemoteAccessApiRequest::OAIRemoteAccessApiRequest(QHttpEngine::Socket *s, OAIRemoteAccessApiHandler* hdl) : QObject(s), socket(s), handler(hdl) {
    auto headers = s->headers();
    for(auto itr = headers.begin(); itr != headers.end(); itr++) {
        requestHeaders.insert(QString(itr.key()), QString(itr.value()));
    }     
}

OAIRemoteAccessApiRequest::~OAIRemoteAccessApiRequest(){
    disconnect(this, nullptr, nullptr, nullptr);
    qDebug() << "OAIRemoteAccessApiRequest::~OAIRemoteAccessApiRequest()";
}

QMap<QString, QString> 
OAIRemoteAccessApiRequest::getRequestHeaders() const {
    return requestHeaders;
}

void OAIRemoteAccessApiRequest::setResponseHeaders(const QMultiMap<QString, QString>& headers){
    for(auto itr = headers.begin(); itr != headers.end(); ++itr) {
        responseHeaders.insert(itr.key(), itr.value());
    }
}


QHttpEngine::Socket* OAIRemoteAccessApiRequest::getRawSocket(){
    return socket;
}


void OAIRemoteAccessApiRequest::getComputerRequest(){
    qDebug() << "//computer/api/json";
    connect(this, &OAIRemoteAccessApiRequest::getComputer, handler, &OAIRemoteAccessApiHandler::getComputer);
    
    
    qint32 depth;   
    if(socket->queryString().keys().contains("depth")){
        fromStringValue(socket->queryString().value("depth"), depth);
    }
    


    emit getComputer( depth);
}


void OAIRemoteAccessApiRequest::getJenkinsRequest(){
    qDebug() << "//api/json";
    connect(this, &OAIRemoteAccessApiRequest::getJenkins, handler, &OAIRemoteAccessApiHandler::getJenkins);
    
    


    emit getJenkins();
}


void OAIRemoteAccessApiRequest::getJobRequest(const QString& namestr){
    qDebug() << "//job/{name}/api/json";
    connect(this, &OAIRemoteAccessApiRequest::getJob, handler, &OAIRemoteAccessApiHandler::getJob);
    
    
    QString name;
    fromStringValue(namestr, name);
    

    emit getJob( name);
}


void OAIRemoteAccessApiRequest::getJobConfigRequest(const QString& namestr){
    qDebug() << "//job/{name}/config.xml";
    connect(this, &OAIRemoteAccessApiRequest::getJobConfig, handler, &OAIRemoteAccessApiHandler::getJobConfig);
    
    
    QString name;
    fromStringValue(namestr, name);
    

    emit getJobConfig( name);
}


void OAIRemoteAccessApiRequest::getJobLastBuildRequest(const QString& namestr){
    qDebug() << "//job/{name}/lastBuild/api/json";
    connect(this, &OAIRemoteAccessApiRequest::getJobLastBuild, handler, &OAIRemoteAccessApiHandler::getJobLastBuild);
    
    
    QString name;
    fromStringValue(namestr, name);
    

    emit getJobLastBuild( name);
}


void OAIRemoteAccessApiRequest::getJobProgressiveTextRequest(const QString& namestr, const QString& numberstr){
    qDebug() << "//job/{name}/{number}/logText/progressiveText";
    connect(this, &OAIRemoteAccessApiRequest::getJobProgressiveText, handler, &OAIRemoteAccessApiHandler::getJobProgressiveText);
    
    
    QString start;   
    if(socket->queryString().keys().contains("start")){
        fromStringValue(socket->queryString().value("start"), start);
    }
    
    QString name;
    fromStringValue(namestr, name);
        QString number;
    fromStringValue(numberstr, number);
    

    emit getJobProgressiveText( name,  number,  start);
}


void OAIRemoteAccessApiRequest::getQueueRequest(){
    qDebug() << "//queue/api/json";
    connect(this, &OAIRemoteAccessApiRequest::getQueue, handler, &OAIRemoteAccessApiHandler::getQueue);
    
    


    emit getQueue();
}


void OAIRemoteAccessApiRequest::getQueueItemRequest(const QString& numberstr){
    qDebug() << "//queue/item/{number}/api/json";
    connect(this, &OAIRemoteAccessApiRequest::getQueueItem, handler, &OAIRemoteAccessApiHandler::getQueueItem);
    
    
    QString number;
    fromStringValue(numberstr, number);
    

    emit getQueueItem( number);
}


void OAIRemoteAccessApiRequest::getViewRequest(const QString& namestr){
    qDebug() << "//view/{name}/api/json";
    connect(this, &OAIRemoteAccessApiRequest::getView, handler, &OAIRemoteAccessApiHandler::getView);
    
    
    QString name;
    fromStringValue(namestr, name);
    

    emit getView( name);
}


void OAIRemoteAccessApiRequest::getViewConfigRequest(const QString& namestr){
    qDebug() << "//view/{name}/config.xml";
    connect(this, &OAIRemoteAccessApiRequest::getViewConfig, handler, &OAIRemoteAccessApiHandler::getViewConfig);
    
    
    QString name;
    fromStringValue(namestr, name);
    

    emit getViewConfig( name);
}


void OAIRemoteAccessApiRequest::headJenkinsRequest(){
    qDebug() << "//api/json";
    connect(this, &OAIRemoteAccessApiRequest::headJenkins, handler, &OAIRemoteAccessApiHandler::headJenkins);
    
    


    emit headJenkins();
}


void OAIRemoteAccessApiRequest::postCreateItemRequest(){
    qDebug() << "//createItem";
    connect(this, &OAIRemoteAccessApiRequest::postCreateItem, handler, &OAIRemoteAccessApiHandler::postCreateItem);
    
    
    QString name;   
    if(socket->queryString().keys().contains("name")){
        fromStringValue(socket->queryString().value("name"), name);
    }
    
    QString from;   
    if(socket->queryString().keys().contains("from")){
        fromStringValue(socket->queryString().value("from"), from);
    }
    
    QString mode;   
    if(socket->queryString().keys().contains("mode")){
        fromStringValue(socket->queryString().value("mode"), mode);
    }
    

    QString jenkins_crumb;
    if(socket->headers().keys().contains("jenkins_crumb")){
        fromStringValue(socket->queryString().value("jenkins_crumb"), jenkins_crumb);
    }
    
    QString content_type;
    if(socket->headers().keys().contains("content_type")){
        fromStringValue(socket->queryString().value("content_type"), content_type);
    }
     
    QString body;
    ::OpenAPI::fromStringValue((QString(socket->readAll()), body);
    

    emit postCreateItem( name,  from,  mode,  jenkins_crumb,  content_type,  body);
}


void OAIRemoteAccessApiRequest::postCreateViewRequest(){
    qDebug() << "//createView";
    connect(this, &OAIRemoteAccessApiRequest::postCreateView, handler, &OAIRemoteAccessApiHandler::postCreateView);
    
    
    QString name;   
    if(socket->queryString().keys().contains("name")){
        fromStringValue(socket->queryString().value("name"), name);
    }
    

    QString jenkins_crumb;
    if(socket->headers().keys().contains("jenkins_crumb")){
        fromStringValue(socket->queryString().value("jenkins_crumb"), jenkins_crumb);
    }
    
    QString content_type;
    if(socket->headers().keys().contains("content_type")){
        fromStringValue(socket->queryString().value("content_type"), content_type);
    }
     
    QString body;
    ::OpenAPI::fromStringValue((QString(socket->readAll()), body);
    

    emit postCreateView( name,  jenkins_crumb,  content_type,  body);
}


void OAIRemoteAccessApiRequest::postJobBuildRequest(const QString& namestr){
    qDebug() << "//job/{name}/build";
    connect(this, &OAIRemoteAccessApiRequest::postJobBuild, handler, &OAIRemoteAccessApiHandler::postJobBuild);
    
    
    QString json;   
    if(socket->queryString().keys().contains("json")){
        fromStringValue(socket->queryString().value("json"), json);
    }
    
    QString token;   
    if(socket->queryString().keys().contains("token")){
        fromStringValue(socket->queryString().value("token"), token);
    }
    
    QString name;
    fromStringValue(namestr, name);
    
    QString jenkins_crumb;
    if(socket->headers().keys().contains("jenkins_crumb")){
        fromStringValue(socket->queryString().value("jenkins_crumb"), jenkins_crumb);
    }
    

    emit postJobBuild( name,  json,  token,  jenkins_crumb);
}


void OAIRemoteAccessApiRequest::postJobConfigRequest(const QString& namestr){
    qDebug() << "//job/{name}/config.xml";
    connect(this, &OAIRemoteAccessApiRequest::postJobConfig, handler, &OAIRemoteAccessApiHandler::postJobConfig);
    
    
    QString name;
    fromStringValue(namestr, name);
    
    QString jenkins_crumb;
    if(socket->headers().keys().contains("jenkins_crumb")){
        fromStringValue(socket->queryString().value("jenkins_crumb"), jenkins_crumb);
    }
     
    QString body;
    ::OpenAPI::fromStringValue((QString(socket->readAll()), body);
    

    emit postJobConfig( name,  body,  jenkins_crumb);
}


void OAIRemoteAccessApiRequest::postJobDeleteRequest(const QString& namestr){
    qDebug() << "//job/{name}/doDelete";
    connect(this, &OAIRemoteAccessApiRequest::postJobDelete, handler, &OAIRemoteAccessApiHandler::postJobDelete);
    
    
    QString name;
    fromStringValue(namestr, name);
    
    QString jenkins_crumb;
    if(socket->headers().keys().contains("jenkins_crumb")){
        fromStringValue(socket->queryString().value("jenkins_crumb"), jenkins_crumb);
    }
    

    emit postJobDelete( name,  jenkins_crumb);
}


void OAIRemoteAccessApiRequest::postJobDisableRequest(const QString& namestr){
    qDebug() << "//job/{name}/disable";
    connect(this, &OAIRemoteAccessApiRequest::postJobDisable, handler, &OAIRemoteAccessApiHandler::postJobDisable);
    
    
    QString name;
    fromStringValue(namestr, name);
    
    QString jenkins_crumb;
    if(socket->headers().keys().contains("jenkins_crumb")){
        fromStringValue(socket->queryString().value("jenkins_crumb"), jenkins_crumb);
    }
    

    emit postJobDisable( name,  jenkins_crumb);
}


void OAIRemoteAccessApiRequest::postJobEnableRequest(const QString& namestr){
    qDebug() << "//job/{name}/enable";
    connect(this, &OAIRemoteAccessApiRequest::postJobEnable, handler, &OAIRemoteAccessApiHandler::postJobEnable);
    
    
    QString name;
    fromStringValue(namestr, name);
    
    QString jenkins_crumb;
    if(socket->headers().keys().contains("jenkins_crumb")){
        fromStringValue(socket->queryString().value("jenkins_crumb"), jenkins_crumb);
    }
    

    emit postJobEnable( name,  jenkins_crumb);
}


void OAIRemoteAccessApiRequest::postJobLastBuildStopRequest(const QString& namestr){
    qDebug() << "//job/{name}/lastBuild/stop";
    connect(this, &OAIRemoteAccessApiRequest::postJobLastBuildStop, handler, &OAIRemoteAccessApiHandler::postJobLastBuildStop);
    
    
    QString name;
    fromStringValue(namestr, name);
    
    QString jenkins_crumb;
    if(socket->headers().keys().contains("jenkins_crumb")){
        fromStringValue(socket->queryString().value("jenkins_crumb"), jenkins_crumb);
    }
    

    emit postJobLastBuildStop( name,  jenkins_crumb);
}


void OAIRemoteAccessApiRequest::postViewConfigRequest(const QString& namestr){
    qDebug() << "//view/{name}/config.xml";
    connect(this, &OAIRemoteAccessApiRequest::postViewConfig, handler, &OAIRemoteAccessApiHandler::postViewConfig);
    
    
    QString name;
    fromStringValue(namestr, name);
    
    QString jenkins_crumb;
    if(socket->headers().keys().contains("jenkins_crumb")){
        fromStringValue(socket->queryString().value("jenkins_crumb"), jenkins_crumb);
    }
     
    QString body;
    ::OpenAPI::fromStringValue((QString(socket->readAll()), body);
    

    emit postViewConfig( name,  body,  jenkins_crumb);
}

  

void OAIRemoteAccessApiRequest::getComputerResponse(const OAIComputerSet& res){
    writeResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getJenkinsResponse(const OAIHudson& res){
    writeResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getJobResponse(const OAIFreeStyleProject& res){
    writeResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getJobConfigResponse(const QString& res){
    writeResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getJobLastBuildResponse(const OAIFreeStyleBuild& res){
    writeResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getJobProgressiveTextResponse(){
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::OK);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getQueueResponse(const OAIQueue& res){
    writeResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getQueueItemResponse(const OAIQueue& res){
    writeResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getViewResponse(const OAIListView& res){
    writeResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getViewConfigResponse(const QString& res){
    writeResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::headJenkinsResponse(){
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::OK);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postCreateItemResponse(){
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::OK);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postCreateViewResponse(){
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::OK);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postJobBuildResponse(){
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::OK);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postJobConfigResponse(){
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::OK);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postJobDeleteResponse(){
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::OK);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postJobDisableResponse(){
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::OK);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postJobEnableResponse(){
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::OK);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postJobLastBuildStopResponse(){
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::OK);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postViewConfigResponse(){
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::OK);
    if(socket->isOpen()){
        socket->close();
    }
}


void OAIRemoteAccessApiRequest::getComputerError(const OAIComputerSet& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getJenkinsError(const OAIHudson& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getJobError(const OAIFreeStyleProject& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getJobConfigError(const QString& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getJobLastBuildError(const OAIFreeStyleBuild& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getJobProgressiveTextError(QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::NotFound);
    socket->write(error_str.toUtf8());
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getQueueError(const OAIQueue& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getQueueItemError(const OAIQueue& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getViewError(const OAIListView& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::getViewConfigError(const QString& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::headJenkinsError(QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::NotFound);
    socket->write(error_str.toUtf8());
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postCreateItemError(QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::NotFound);
    socket->write(error_str.toUtf8());
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postCreateViewError(QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::NotFound);
    socket->write(error_str.toUtf8());
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postJobBuildError(QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::NotFound);
    socket->write(error_str.toUtf8());
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postJobConfigError(QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::NotFound);
    socket->write(error_str.toUtf8());
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postJobDeleteError(QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::NotFound);
    socket->write(error_str.toUtf8());
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postJobDisableError(QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::NotFound);
    socket->write(error_str.toUtf8());
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postJobEnableError(QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::NotFound);
    socket->write(error_str.toUtf8());
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postJobLastBuildStopError(QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::NotFound);
    socket->write(error_str.toUtf8());
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIRemoteAccessApiRequest::postViewConfigError(QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();    
    socket->setStatusCode(QHttpEngine::Socket::NotFound);
    socket->write(error_str.toUtf8());
    if(socket->isOpen()){
        socket->close();
    }
}


void OAIRemoteAccessApiRequest::sendCustomResponse(QByteArray & res, QNetworkReply::NetworkError error_type){
    Q_UNUSED(res);  // TODO
    Q_UNUSED(error_type); // TODO
}
    
void OAIRemoteAccessApiRequest::sendCustomResponse(QIODevice *res, QNetworkReply::NetworkError error_type){
    Q_UNUSED(res);  // TODO
    Q_UNUSED(error_type); // TODO
}

}
