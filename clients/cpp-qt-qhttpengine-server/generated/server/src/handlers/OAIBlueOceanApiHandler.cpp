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

#include <QJsonArray>
#include <QJsonDocument>
#include <QJsonObject>
#include <QVariantMap>
#include <QDebug>

#include "OAIBlueOceanApiHandler.h"
#include "OAIBlueOceanApiRequest.h"

namespace OpenAPI {

OAIBlueOceanApiHandler::OAIBlueOceanApiHandler(){

}

OAIBlueOceanApiHandler::~OAIBlueOceanApiHandler(){

}

void OAIBlueOceanApiHandler::deletePipelineQueueItem(QString organization, QString pipeline, QString queue) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    Q_UNUSED(queue);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        
        reqObj->deletePipelineQueueItemResponse();
    }
}
void OAIBlueOceanApiHandler::getAuthenticatedUser(QString organization) {
    Q_UNUSED(organization);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIUser res;
        reqObj->getAuthenticatedUserResponse(res);
    }
}
void OAIBlueOceanApiHandler::getClasses(QString r_class) {
    Q_UNUSED(r_class);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QString res;
        reqObj->getClassesResponse(res);
    }
}
void OAIBlueOceanApiHandler::getJsonWebKey(qint32 key) {
    Q_UNUSED(key);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QString res;
        reqObj->getJsonWebKeyResponse(res);
    }
}
void OAIBlueOceanApiHandler::getJsonWebToken(qint32 expiry_time_in_mins, qint32 max_expiry_time_in_mins) {
    Q_UNUSED(expiry_time_in_mins);
    Q_UNUSED(max_expiry_time_in_mins);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QString res;
        reqObj->getJsonWebTokenResponse(res);
    }
}
void OAIBlueOceanApiHandler::getOrganisation(QString organization) {
    Q_UNUSED(organization);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIOrganisation res;
        reqObj->getOrganisationResponse(res);
    }
}
void OAIBlueOceanApiHandler::getOrganisations() {
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QList<OAIOrganisation> res;
        reqObj->getOrganisationsResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipeline(QString organization, QString pipeline) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIPipeline res;
        reqObj->getPipelineResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipelineActivities(QString organization, QString pipeline) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QList<OAIPipelineActivity> res;
        reqObj->getPipelineActivitiesResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipelineBranch(QString organization, QString pipeline, QString branch) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    Q_UNUSED(branch);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIBranchImpl res;
        reqObj->getPipelineBranchResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipelineBranchRun(QString organization, QString pipeline, QString branch, QString run) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    Q_UNUSED(branch);
    Q_UNUSED(run);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIPipelineRun res;
        reqObj->getPipelineBranchRunResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipelineBranches(QString organization, QString pipeline) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIMultibranchPipeline res;
        reqObj->getPipelineBranchesResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipelineFolder(QString organization, QString folder) {
    Q_UNUSED(organization);
    Q_UNUSED(folder);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIPipelineFolderImpl res;
        reqObj->getPipelineFolderResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipelineFolderPipeline(QString organization, QString pipeline, QString folder) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    Q_UNUSED(folder);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIPipelineImpl res;
        reqObj->getPipelineFolderPipelineResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipelineQueue(QString organization, QString pipeline) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QList<OAIQueueItemImpl> res;
        reqObj->getPipelineQueueResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipelineRun(QString organization, QString pipeline, QString run) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    Q_UNUSED(run);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIPipelineRun res;
        reqObj->getPipelineRunResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipelineRunLog(QString organization, QString pipeline, QString run, qint32 start, bool download) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    Q_UNUSED(run);
    Q_UNUSED(start);
    Q_UNUSED(download);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QString res;
        reqObj->getPipelineRunLogResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipelineRunNode(QString organization, QString pipeline, QString run, QString node) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    Q_UNUSED(run);
    Q_UNUSED(node);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIPipelineRunNode res;
        reqObj->getPipelineRunNodeResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipelineRunNodeStep(QString organization, QString pipeline, QString run, QString node, QString step) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    Q_UNUSED(run);
    Q_UNUSED(node);
    Q_UNUSED(step);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIPipelineStepImpl res;
        reqObj->getPipelineRunNodeStepResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipelineRunNodeStepLog(QString organization, QString pipeline, QString run, QString node, QString step) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    Q_UNUSED(run);
    Q_UNUSED(node);
    Q_UNUSED(step);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QString res;
        reqObj->getPipelineRunNodeStepLogResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipelineRunNodeSteps(QString organization, QString pipeline, QString run, QString node) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    Q_UNUSED(run);
    Q_UNUSED(node);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QList<OAIPipelineStepImpl> res;
        reqObj->getPipelineRunNodeStepsResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipelineRunNodes(QString organization, QString pipeline, QString run) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    Q_UNUSED(run);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QList<OAIPipelineRunNode> res;
        reqObj->getPipelineRunNodesResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipelineRuns(QString organization, QString pipeline) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QList<OAIPipelineRun> res;
        reqObj->getPipelineRunsResponse(res);
    }
}
void OAIBlueOceanApiHandler::getPipelines(QString organization) {
    Q_UNUSED(organization);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QList<OAIPipeline> res;
        reqObj->getPipelinesResponse(res);
    }
}
void OAIBlueOceanApiHandler::getSCM(QString organization, QString scm) {
    Q_UNUSED(organization);
    Q_UNUSED(scm);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIGithubScm res;
        reqObj->getSCMResponse(res);
    }
}
void OAIBlueOceanApiHandler::getSCMOrganisationRepositories(QString organization, QString scm, QString scm_organisation, QString credential_id, qint32 page_size, qint32 page_number) {
    Q_UNUSED(organization);
    Q_UNUSED(scm);
    Q_UNUSED(scm_organisation);
    Q_UNUSED(credential_id);
    Q_UNUSED(page_size);
    Q_UNUSED(page_number);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QList<OAIGithubOrganization> res;
        reqObj->getSCMOrganisationRepositoriesResponse(res);
    }
}
void OAIBlueOceanApiHandler::getSCMOrganisationRepository(QString organization, QString scm, QString scm_organisation, QString repository, QString credential_id) {
    Q_UNUSED(organization);
    Q_UNUSED(scm);
    Q_UNUSED(scm_organisation);
    Q_UNUSED(repository);
    Q_UNUSED(credential_id);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QList<OAIGithubOrganization> res;
        reqObj->getSCMOrganisationRepositoryResponse(res);
    }
}
void OAIBlueOceanApiHandler::getSCMOrganisations(QString organization, QString scm, QString credential_id) {
    Q_UNUSED(organization);
    Q_UNUSED(scm);
    Q_UNUSED(credential_id);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QList<OAIGithubOrganization> res;
        reqObj->getSCMOrganisationsResponse(res);
    }
}
void OAIBlueOceanApiHandler::getUser(QString organization, QString user) {
    Q_UNUSED(organization);
    Q_UNUSED(user);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIUser res;
        reqObj->getUserResponse(res);
    }
}
void OAIBlueOceanApiHandler::getUserFavorites(QString user) {
    Q_UNUSED(user);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QList<OAIFavoriteImpl> res;
        reqObj->getUserFavoritesResponse(res);
    }
}
void OAIBlueOceanApiHandler::getUsers(QString organization) {
    Q_UNUSED(organization);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIUser res;
        reqObj->getUsersResponse(res);
    }
}
void OAIBlueOceanApiHandler::postPipelineRun(QString organization, QString pipeline, QString run) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    Q_UNUSED(run);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIQueueItemImpl res;
        reqObj->postPipelineRunResponse(res);
    }
}
void OAIBlueOceanApiHandler::postPipelineRuns(QString organization, QString pipeline) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIQueueItemImpl res;
        reqObj->postPipelineRunsResponse(res);
    }
}
void OAIBlueOceanApiHandler::putPipelineFavorite(QString organization, QString pipeline, bool body) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    Q_UNUSED(body);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIFavoriteImpl res;
        reqObj->putPipelineFavoriteResponse(res);
    }
}
void OAIBlueOceanApiHandler::putPipelineRun(QString organization, QString pipeline, QString run, QString blocking, qint32 time_out_in_secs) {
    Q_UNUSED(organization);
    Q_UNUSED(pipeline);
    Q_UNUSED(run);
    Q_UNUSED(blocking);
    Q_UNUSED(time_out_in_secs);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        OAIPipelineRun res;
        reqObj->putPipelineRunResponse(res);
    }
}
void OAIBlueOceanApiHandler::search(QString q) {
    Q_UNUSED(q);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QString res;
        reqObj->searchResponse(res);
    }
}
void OAIBlueOceanApiHandler::searchClasses(QString q) {
    Q_UNUSED(q);
    auto reqObj = qobject_cast<OAIBlueOceanApiRequest*>(sender());
    if( reqObj != nullptr )
    {
        QString res;
        reqObj->searchClassesResponse(res);
    }
}


}
