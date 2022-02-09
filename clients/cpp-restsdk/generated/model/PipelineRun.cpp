/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "PipelineRun.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




PipelineRun::PipelineRun()
{
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
    m_ArtifactsIsSet = false;
    m_DurationInMillis = 0;
    m_DurationInMillisIsSet = false;
    m_EstimatedDurationInMillis = 0;
    m_EstimatedDurationInMillisIsSet = false;
    m_EnQueueTime = utility::conversions::to_string_t("");
    m_EnQueueTimeIsSet = false;
    m_EndTime = utility::conversions::to_string_t("");
    m_EndTimeIsSet = false;
    m_Id = utility::conversions::to_string_t("");
    m_IdIsSet = false;
    m_Organization = utility::conversions::to_string_t("");
    m_OrganizationIsSet = false;
    m_Pipeline = utility::conversions::to_string_t("");
    m_PipelineIsSet = false;
    m_Result = utility::conversions::to_string_t("");
    m_ResultIsSet = false;
    m_RunSummary = utility::conversions::to_string_t("");
    m_RunSummaryIsSet = false;
    m_StartTime = utility::conversions::to_string_t("");
    m_StartTimeIsSet = false;
    m_State = utility::conversions::to_string_t("");
    m_StateIsSet = false;
    m_Type = utility::conversions::to_string_t("");
    m_TypeIsSet = false;
    m_CommitId = utility::conversions::to_string_t("");
    m_CommitIdIsSet = false;
}

PipelineRun::~PipelineRun()
{
}

void PipelineRun::validate()
{
    // TODO: implement validation
}

web::json::value PipelineRun::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m__classIsSet)
    {
        val[utility::conversions::to_string_t(U("_class"))] = ModelBase::toJson(m__class);
    }
    if(m_ArtifactsIsSet)
    {
        val[utility::conversions::to_string_t(U("artifacts"))] = ModelBase::toJson(m_Artifacts);
    }
    if(m_DurationInMillisIsSet)
    {
        val[utility::conversions::to_string_t(U("durationInMillis"))] = ModelBase::toJson(m_DurationInMillis);
    }
    if(m_EstimatedDurationInMillisIsSet)
    {
        val[utility::conversions::to_string_t(U("estimatedDurationInMillis"))] = ModelBase::toJson(m_EstimatedDurationInMillis);
    }
    if(m_EnQueueTimeIsSet)
    {
        val[utility::conversions::to_string_t(U("enQueueTime"))] = ModelBase::toJson(m_EnQueueTime);
    }
    if(m_EndTimeIsSet)
    {
        val[utility::conversions::to_string_t(U("endTime"))] = ModelBase::toJson(m_EndTime);
    }
    if(m_IdIsSet)
    {
        val[utility::conversions::to_string_t(U("id"))] = ModelBase::toJson(m_Id);
    }
    if(m_OrganizationIsSet)
    {
        val[utility::conversions::to_string_t(U("organization"))] = ModelBase::toJson(m_Organization);
    }
    if(m_PipelineIsSet)
    {
        val[utility::conversions::to_string_t(U("pipeline"))] = ModelBase::toJson(m_Pipeline);
    }
    if(m_ResultIsSet)
    {
        val[utility::conversions::to_string_t(U("result"))] = ModelBase::toJson(m_Result);
    }
    if(m_RunSummaryIsSet)
    {
        val[utility::conversions::to_string_t(U("runSummary"))] = ModelBase::toJson(m_RunSummary);
    }
    if(m_StartTimeIsSet)
    {
        val[utility::conversions::to_string_t(U("startTime"))] = ModelBase::toJson(m_StartTime);
    }
    if(m_StateIsSet)
    {
        val[utility::conversions::to_string_t(U("state"))] = ModelBase::toJson(m_State);
    }
    if(m_TypeIsSet)
    {
        val[utility::conversions::to_string_t(U("type"))] = ModelBase::toJson(m_Type);
    }
    if(m_CommitIdIsSet)
    {
        val[utility::conversions::to_string_t(U("commitId"))] = ModelBase::toJson(m_CommitId);
    }

    return val;
}

bool PipelineRun::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("_class"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("_class")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal__class;
            ok &= ModelBase::fromJson(fieldValue, refVal__class);
            setClass(refVal__class);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("artifacts"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("artifacts")));
        if(!fieldValue.is_null())
        {
            std::vector<std::shared_ptr<PipelineRunartifacts>> refVal_artifacts;
            ok &= ModelBase::fromJson(fieldValue, refVal_artifacts);
            setArtifacts(refVal_artifacts);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("durationInMillis"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("durationInMillis")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_durationInMillis;
            ok &= ModelBase::fromJson(fieldValue, refVal_durationInMillis);
            setDurationInMillis(refVal_durationInMillis);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("estimatedDurationInMillis"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("estimatedDurationInMillis")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_estimatedDurationInMillis;
            ok &= ModelBase::fromJson(fieldValue, refVal_estimatedDurationInMillis);
            setEstimatedDurationInMillis(refVal_estimatedDurationInMillis);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("enQueueTime"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("enQueueTime")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_enQueueTime;
            ok &= ModelBase::fromJson(fieldValue, refVal_enQueueTime);
            setEnQueueTime(refVal_enQueueTime);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("endTime"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("endTime")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_endTime;
            ok &= ModelBase::fromJson(fieldValue, refVal_endTime);
            setEndTime(refVal_endTime);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("id")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_id);
            setId(refVal_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("organization"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("organization")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_organization;
            ok &= ModelBase::fromJson(fieldValue, refVal_organization);
            setOrganization(refVal_organization);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("pipeline"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("pipeline")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_pipeline;
            ok &= ModelBase::fromJson(fieldValue, refVal_pipeline);
            setPipeline(refVal_pipeline);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("result"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("result")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_result;
            ok &= ModelBase::fromJson(fieldValue, refVal_result);
            setResult(refVal_result);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("runSummary"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("runSummary")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_runSummary;
            ok &= ModelBase::fromJson(fieldValue, refVal_runSummary);
            setRunSummary(refVal_runSummary);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("startTime"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("startTime")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_startTime;
            ok &= ModelBase::fromJson(fieldValue, refVal_startTime);
            setStartTime(refVal_startTime);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("state"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("state")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_state;
            ok &= ModelBase::fromJson(fieldValue, refVal_state);
            setState(refVal_state);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("type"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("type")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_type;
            ok &= ModelBase::fromJson(fieldValue, refVal_type);
            setType(refVal_type);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("commitId"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("commitId")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_commitId;
            ok &= ModelBase::fromJson(fieldValue, refVal_commitId);
            setCommitId(refVal_commitId);
        }
    }
    return ok;
}

void PipelineRun::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m__classIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("_class")), m__class));
    }
    if(m_ArtifactsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("artifacts")), m_Artifacts));
    }
    if(m_DurationInMillisIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("durationInMillis")), m_DurationInMillis));
    }
    if(m_EstimatedDurationInMillisIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("estimatedDurationInMillis")), m_EstimatedDurationInMillis));
    }
    if(m_EnQueueTimeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("enQueueTime")), m_EnQueueTime));
    }
    if(m_EndTimeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("endTime")), m_EndTime));
    }
    if(m_IdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("id")), m_Id));
    }
    if(m_OrganizationIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("organization")), m_Organization));
    }
    if(m_PipelineIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("pipeline")), m_Pipeline));
    }
    if(m_ResultIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("result")), m_Result));
    }
    if(m_RunSummaryIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("runSummary")), m_RunSummary));
    }
    if(m_StartTimeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("startTime")), m_StartTime));
    }
    if(m_StateIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("state")), m_State));
    }
    if(m_TypeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("type")), m_Type));
    }
    if(m_CommitIdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("commitId")), m_CommitId));
    }
}

bool PipelineRun::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("_class"))))
    {
        utility::string_t refVal__class;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("_class"))), refVal__class );
        setClass(refVal__class);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("artifacts"))))
    {
        std::vector<std::shared_ptr<PipelineRunartifacts>> refVal_artifacts;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("artifacts"))), refVal_artifacts );
        setArtifacts(refVal_artifacts);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("durationInMillis"))))
    {
        int32_t refVal_durationInMillis;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("durationInMillis"))), refVal_durationInMillis );
        setDurationInMillis(refVal_durationInMillis);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("estimatedDurationInMillis"))))
    {
        int32_t refVal_estimatedDurationInMillis;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("estimatedDurationInMillis"))), refVal_estimatedDurationInMillis );
        setEstimatedDurationInMillis(refVal_estimatedDurationInMillis);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("enQueueTime"))))
    {
        utility::string_t refVal_enQueueTime;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("enQueueTime"))), refVal_enQueueTime );
        setEnQueueTime(refVal_enQueueTime);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("endTime"))))
    {
        utility::string_t refVal_endTime;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("endTime"))), refVal_endTime );
        setEndTime(refVal_endTime);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("id"))))
    {
        utility::string_t refVal_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("id"))), refVal_id );
        setId(refVal_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("organization"))))
    {
        utility::string_t refVal_organization;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("organization"))), refVal_organization );
        setOrganization(refVal_organization);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("pipeline"))))
    {
        utility::string_t refVal_pipeline;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("pipeline"))), refVal_pipeline );
        setPipeline(refVal_pipeline);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("result"))))
    {
        utility::string_t refVal_result;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("result"))), refVal_result );
        setResult(refVal_result);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("runSummary"))))
    {
        utility::string_t refVal_runSummary;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("runSummary"))), refVal_runSummary );
        setRunSummary(refVal_runSummary);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("startTime"))))
    {
        utility::string_t refVal_startTime;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("startTime"))), refVal_startTime );
        setStartTime(refVal_startTime);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("state"))))
    {
        utility::string_t refVal_state;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("state"))), refVal_state );
        setState(refVal_state);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("type"))))
    {
        utility::string_t refVal_type;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("type"))), refVal_type );
        setType(refVal_type);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("commitId"))))
    {
        utility::string_t refVal_commitId;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("commitId"))), refVal_commitId );
        setCommitId(refVal_commitId);
    }
    return ok;
}

utility::string_t PipelineRun::getClass() const
{
    return m__class;
}

void PipelineRun::setClass(const utility::string_t& value)
{
    m__class = value;
    m__classIsSet = true;
}

bool PipelineRun::r_classIsSet() const
{
    return m__classIsSet;
}

void PipelineRun::unset_class()
{
    m__classIsSet = false;
}
std::vector<std::shared_ptr<PipelineRunartifacts>>& PipelineRun::getArtifacts()
{
    return m_Artifacts;
}

void PipelineRun::setArtifacts(const std::vector<std::shared_ptr<PipelineRunartifacts>>& value)
{
    m_Artifacts = value;
    m_ArtifactsIsSet = true;
}

bool PipelineRun::artifactsIsSet() const
{
    return m_ArtifactsIsSet;
}

void PipelineRun::unsetArtifacts()
{
    m_ArtifactsIsSet = false;
}
int32_t PipelineRun::getDurationInMillis() const
{
    return m_DurationInMillis;
}

void PipelineRun::setDurationInMillis(int32_t value)
{
    m_DurationInMillis = value;
    m_DurationInMillisIsSet = true;
}

bool PipelineRun::durationInMillisIsSet() const
{
    return m_DurationInMillisIsSet;
}

void PipelineRun::unsetDurationInMillis()
{
    m_DurationInMillisIsSet = false;
}
int32_t PipelineRun::getEstimatedDurationInMillis() const
{
    return m_EstimatedDurationInMillis;
}

void PipelineRun::setEstimatedDurationInMillis(int32_t value)
{
    m_EstimatedDurationInMillis = value;
    m_EstimatedDurationInMillisIsSet = true;
}

bool PipelineRun::estimatedDurationInMillisIsSet() const
{
    return m_EstimatedDurationInMillisIsSet;
}

void PipelineRun::unsetEstimatedDurationInMillis()
{
    m_EstimatedDurationInMillisIsSet = false;
}
utility::string_t PipelineRun::getEnQueueTime() const
{
    return m_EnQueueTime;
}

void PipelineRun::setEnQueueTime(const utility::string_t& value)
{
    m_EnQueueTime = value;
    m_EnQueueTimeIsSet = true;
}

bool PipelineRun::enQueueTimeIsSet() const
{
    return m_EnQueueTimeIsSet;
}

void PipelineRun::unsetEnQueueTime()
{
    m_EnQueueTimeIsSet = false;
}
utility::string_t PipelineRun::getEndTime() const
{
    return m_EndTime;
}

void PipelineRun::setEndTime(const utility::string_t& value)
{
    m_EndTime = value;
    m_EndTimeIsSet = true;
}

bool PipelineRun::endTimeIsSet() const
{
    return m_EndTimeIsSet;
}

void PipelineRun::unsetEndTime()
{
    m_EndTimeIsSet = false;
}
utility::string_t PipelineRun::getId() const
{
    return m_Id;
}

void PipelineRun::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool PipelineRun::idIsSet() const
{
    return m_IdIsSet;
}

void PipelineRun::unsetId()
{
    m_IdIsSet = false;
}
utility::string_t PipelineRun::getOrganization() const
{
    return m_Organization;
}

void PipelineRun::setOrganization(const utility::string_t& value)
{
    m_Organization = value;
    m_OrganizationIsSet = true;
}

bool PipelineRun::organizationIsSet() const
{
    return m_OrganizationIsSet;
}

void PipelineRun::unsetOrganization()
{
    m_OrganizationIsSet = false;
}
utility::string_t PipelineRun::getPipeline() const
{
    return m_Pipeline;
}

void PipelineRun::setPipeline(const utility::string_t& value)
{
    m_Pipeline = value;
    m_PipelineIsSet = true;
}

bool PipelineRun::pipelineIsSet() const
{
    return m_PipelineIsSet;
}

void PipelineRun::unsetPipeline()
{
    m_PipelineIsSet = false;
}
utility::string_t PipelineRun::getResult() const
{
    return m_Result;
}

void PipelineRun::setResult(const utility::string_t& value)
{
    m_Result = value;
    m_ResultIsSet = true;
}

bool PipelineRun::resultIsSet() const
{
    return m_ResultIsSet;
}

void PipelineRun::unsetResult()
{
    m_ResultIsSet = false;
}
utility::string_t PipelineRun::getRunSummary() const
{
    return m_RunSummary;
}

void PipelineRun::setRunSummary(const utility::string_t& value)
{
    m_RunSummary = value;
    m_RunSummaryIsSet = true;
}

bool PipelineRun::runSummaryIsSet() const
{
    return m_RunSummaryIsSet;
}

void PipelineRun::unsetRunSummary()
{
    m_RunSummaryIsSet = false;
}
utility::string_t PipelineRun::getStartTime() const
{
    return m_StartTime;
}

void PipelineRun::setStartTime(const utility::string_t& value)
{
    m_StartTime = value;
    m_StartTimeIsSet = true;
}

bool PipelineRun::startTimeIsSet() const
{
    return m_StartTimeIsSet;
}

void PipelineRun::unsetStartTime()
{
    m_StartTimeIsSet = false;
}
utility::string_t PipelineRun::getState() const
{
    return m_State;
}

void PipelineRun::setState(const utility::string_t& value)
{
    m_State = value;
    m_StateIsSet = true;
}

bool PipelineRun::stateIsSet() const
{
    return m_StateIsSet;
}

void PipelineRun::unsetState()
{
    m_StateIsSet = false;
}
utility::string_t PipelineRun::getType() const
{
    return m_Type;
}

void PipelineRun::setType(const utility::string_t& value)
{
    m_Type = value;
    m_TypeIsSet = true;
}

bool PipelineRun::typeIsSet() const
{
    return m_TypeIsSet;
}

void PipelineRun::unsetType()
{
    m_TypeIsSet = false;
}
utility::string_t PipelineRun::getCommitId() const
{
    return m_CommitId;
}

void PipelineRun::setCommitId(const utility::string_t& value)
{
    m_CommitId = value;
    m_CommitIdIsSet = true;
}

bool PipelineRun::commitIdIsSet() const
{
    return m_CommitIdIsSet;
}

void PipelineRun::unsetCommitId()
{
    m_CommitIdIsSet = false;
}
}
}
}
}


