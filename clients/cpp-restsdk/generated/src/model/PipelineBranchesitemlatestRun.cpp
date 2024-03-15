/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 7.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "CppRestOpenAPIClient/model/PipelineBranchesitemlatestRun.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



PipelineBranchesitemlatestRun::PipelineBranchesitemlatestRun()
{
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
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
}

PipelineBranchesitemlatestRun::~PipelineBranchesitemlatestRun()
{
}

void PipelineBranchesitemlatestRun::validate()
{
    // TODO: implement validation
}

web::json::value PipelineBranchesitemlatestRun::toJson() const
{

    web::json::value val = web::json::value::object();
    
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
    if(m__classIsSet)
    {
        val[utility::conversions::to_string_t(U("_class"))] = ModelBase::toJson(m__class);
    }

    return val;
}

bool PipelineBranchesitemlatestRun::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("durationInMillis"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("durationInMillis")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_setDurationInMillis;
            ok &= ModelBase::fromJson(fieldValue, refVal_setDurationInMillis);
            setDurationInMillis(refVal_setDurationInMillis);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("estimatedDurationInMillis"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("estimatedDurationInMillis")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_setEstimatedDurationInMillis;
            ok &= ModelBase::fromJson(fieldValue, refVal_setEstimatedDurationInMillis);
            setEstimatedDurationInMillis(refVal_setEstimatedDurationInMillis);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("enQueueTime"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("enQueueTime")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setEnQueueTime;
            ok &= ModelBase::fromJson(fieldValue, refVal_setEnQueueTime);
            setEnQueueTime(refVal_setEnQueueTime);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("endTime"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("endTime")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setEndTime;
            ok &= ModelBase::fromJson(fieldValue, refVal_setEndTime);
            setEndTime(refVal_setEndTime);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("id")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setId;
            ok &= ModelBase::fromJson(fieldValue, refVal_setId);
            setId(refVal_setId);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("organization"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("organization")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setOrganization;
            ok &= ModelBase::fromJson(fieldValue, refVal_setOrganization);
            setOrganization(refVal_setOrganization);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("pipeline"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("pipeline")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setPipeline;
            ok &= ModelBase::fromJson(fieldValue, refVal_setPipeline);
            setPipeline(refVal_setPipeline);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("result"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("result")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setResult;
            ok &= ModelBase::fromJson(fieldValue, refVal_setResult);
            setResult(refVal_setResult);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("runSummary"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("runSummary")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setRunSummary;
            ok &= ModelBase::fromJson(fieldValue, refVal_setRunSummary);
            setRunSummary(refVal_setRunSummary);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("startTime"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("startTime")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setStartTime;
            ok &= ModelBase::fromJson(fieldValue, refVal_setStartTime);
            setStartTime(refVal_setStartTime);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("state"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("state")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setState;
            ok &= ModelBase::fromJson(fieldValue, refVal_setState);
            setState(refVal_setState);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("type"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("type")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setType;
            ok &= ModelBase::fromJson(fieldValue, refVal_setType);
            setType(refVal_setType);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("commitId"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("commitId")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setCommitId;
            ok &= ModelBase::fromJson(fieldValue, refVal_setCommitId);
            setCommitId(refVal_setCommitId);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("_class"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("_class")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setClass;
            ok &= ModelBase::fromJson(fieldValue, refVal_setClass);
            setClass(refVal_setClass);
        }
    }
    return ok;
}

void PipelineBranchesitemlatestRun::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
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
    if(m__classIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("_class")), m__class));
    }
}

bool PipelineBranchesitemlatestRun::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("durationInMillis"))))
    {
        int32_t refVal_setDurationInMillis;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("durationInMillis"))), refVal_setDurationInMillis );
        setDurationInMillis(refVal_setDurationInMillis);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("estimatedDurationInMillis"))))
    {
        int32_t refVal_setEstimatedDurationInMillis;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("estimatedDurationInMillis"))), refVal_setEstimatedDurationInMillis );
        setEstimatedDurationInMillis(refVal_setEstimatedDurationInMillis);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("enQueueTime"))))
    {
        utility::string_t refVal_setEnQueueTime;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("enQueueTime"))), refVal_setEnQueueTime );
        setEnQueueTime(refVal_setEnQueueTime);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("endTime"))))
    {
        utility::string_t refVal_setEndTime;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("endTime"))), refVal_setEndTime );
        setEndTime(refVal_setEndTime);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("id"))))
    {
        utility::string_t refVal_setId;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("id"))), refVal_setId );
        setId(refVal_setId);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("organization"))))
    {
        utility::string_t refVal_setOrganization;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("organization"))), refVal_setOrganization );
        setOrganization(refVal_setOrganization);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("pipeline"))))
    {
        utility::string_t refVal_setPipeline;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("pipeline"))), refVal_setPipeline );
        setPipeline(refVal_setPipeline);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("result"))))
    {
        utility::string_t refVal_setResult;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("result"))), refVal_setResult );
        setResult(refVal_setResult);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("runSummary"))))
    {
        utility::string_t refVal_setRunSummary;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("runSummary"))), refVal_setRunSummary );
        setRunSummary(refVal_setRunSummary);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("startTime"))))
    {
        utility::string_t refVal_setStartTime;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("startTime"))), refVal_setStartTime );
        setStartTime(refVal_setStartTime);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("state"))))
    {
        utility::string_t refVal_setState;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("state"))), refVal_setState );
        setState(refVal_setState);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("type"))))
    {
        utility::string_t refVal_setType;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("type"))), refVal_setType );
        setType(refVal_setType);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("commitId"))))
    {
        utility::string_t refVal_setCommitId;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("commitId"))), refVal_setCommitId );
        setCommitId(refVal_setCommitId);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("_class"))))
    {
        utility::string_t refVal_setClass;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("_class"))), refVal_setClass );
        setClass(refVal_setClass);
    }
    return ok;
}

int32_t PipelineBranchesitemlatestRun::getDurationInMillis() const
{
    return m_DurationInMillis;
}

void PipelineBranchesitemlatestRun::setDurationInMillis(int32_t value)
{
    m_DurationInMillis = value;
    m_DurationInMillisIsSet = true;
}

bool PipelineBranchesitemlatestRun::durationInMillisIsSet() const
{
    return m_DurationInMillisIsSet;
}

void PipelineBranchesitemlatestRun::unsetDurationInMillis()
{
    m_DurationInMillisIsSet = false;
}
int32_t PipelineBranchesitemlatestRun::getEstimatedDurationInMillis() const
{
    return m_EstimatedDurationInMillis;
}

void PipelineBranchesitemlatestRun::setEstimatedDurationInMillis(int32_t value)
{
    m_EstimatedDurationInMillis = value;
    m_EstimatedDurationInMillisIsSet = true;
}

bool PipelineBranchesitemlatestRun::estimatedDurationInMillisIsSet() const
{
    return m_EstimatedDurationInMillisIsSet;
}

void PipelineBranchesitemlatestRun::unsetEstimatedDurationInMillis()
{
    m_EstimatedDurationInMillisIsSet = false;
}
utility::string_t PipelineBranchesitemlatestRun::getEnQueueTime() const
{
    return m_EnQueueTime;
}

void PipelineBranchesitemlatestRun::setEnQueueTime(const utility::string_t& value)
{
    m_EnQueueTime = value;
    m_EnQueueTimeIsSet = true;
}

bool PipelineBranchesitemlatestRun::enQueueTimeIsSet() const
{
    return m_EnQueueTimeIsSet;
}

void PipelineBranchesitemlatestRun::unsetEnQueueTime()
{
    m_EnQueueTimeIsSet = false;
}
utility::string_t PipelineBranchesitemlatestRun::getEndTime() const
{
    return m_EndTime;
}

void PipelineBranchesitemlatestRun::setEndTime(const utility::string_t& value)
{
    m_EndTime = value;
    m_EndTimeIsSet = true;
}

bool PipelineBranchesitemlatestRun::endTimeIsSet() const
{
    return m_EndTimeIsSet;
}

void PipelineBranchesitemlatestRun::unsetEndTime()
{
    m_EndTimeIsSet = false;
}
utility::string_t PipelineBranchesitemlatestRun::getId() const
{
    return m_Id;
}

void PipelineBranchesitemlatestRun::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool PipelineBranchesitemlatestRun::idIsSet() const
{
    return m_IdIsSet;
}

void PipelineBranchesitemlatestRun::unsetId()
{
    m_IdIsSet = false;
}
utility::string_t PipelineBranchesitemlatestRun::getOrganization() const
{
    return m_Organization;
}

void PipelineBranchesitemlatestRun::setOrganization(const utility::string_t& value)
{
    m_Organization = value;
    m_OrganizationIsSet = true;
}

bool PipelineBranchesitemlatestRun::organizationIsSet() const
{
    return m_OrganizationIsSet;
}

void PipelineBranchesitemlatestRun::unsetOrganization()
{
    m_OrganizationIsSet = false;
}
utility::string_t PipelineBranchesitemlatestRun::getPipeline() const
{
    return m_Pipeline;
}

void PipelineBranchesitemlatestRun::setPipeline(const utility::string_t& value)
{
    m_Pipeline = value;
    m_PipelineIsSet = true;
}

bool PipelineBranchesitemlatestRun::pipelineIsSet() const
{
    return m_PipelineIsSet;
}

void PipelineBranchesitemlatestRun::unsetPipeline()
{
    m_PipelineIsSet = false;
}
utility::string_t PipelineBranchesitemlatestRun::getResult() const
{
    return m_Result;
}

void PipelineBranchesitemlatestRun::setResult(const utility::string_t& value)
{
    m_Result = value;
    m_ResultIsSet = true;
}

bool PipelineBranchesitemlatestRun::resultIsSet() const
{
    return m_ResultIsSet;
}

void PipelineBranchesitemlatestRun::unsetResult()
{
    m_ResultIsSet = false;
}
utility::string_t PipelineBranchesitemlatestRun::getRunSummary() const
{
    return m_RunSummary;
}

void PipelineBranchesitemlatestRun::setRunSummary(const utility::string_t& value)
{
    m_RunSummary = value;
    m_RunSummaryIsSet = true;
}

bool PipelineBranchesitemlatestRun::runSummaryIsSet() const
{
    return m_RunSummaryIsSet;
}

void PipelineBranchesitemlatestRun::unsetRunSummary()
{
    m_RunSummaryIsSet = false;
}
utility::string_t PipelineBranchesitemlatestRun::getStartTime() const
{
    return m_StartTime;
}

void PipelineBranchesitemlatestRun::setStartTime(const utility::string_t& value)
{
    m_StartTime = value;
    m_StartTimeIsSet = true;
}

bool PipelineBranchesitemlatestRun::startTimeIsSet() const
{
    return m_StartTimeIsSet;
}

void PipelineBranchesitemlatestRun::unsetStartTime()
{
    m_StartTimeIsSet = false;
}
utility::string_t PipelineBranchesitemlatestRun::getState() const
{
    return m_State;
}

void PipelineBranchesitemlatestRun::setState(const utility::string_t& value)
{
    m_State = value;
    m_StateIsSet = true;
}

bool PipelineBranchesitemlatestRun::stateIsSet() const
{
    return m_StateIsSet;
}

void PipelineBranchesitemlatestRun::unsetState()
{
    m_StateIsSet = false;
}
utility::string_t PipelineBranchesitemlatestRun::getType() const
{
    return m_Type;
}

void PipelineBranchesitemlatestRun::setType(const utility::string_t& value)
{
    m_Type = value;
    m_TypeIsSet = true;
}

bool PipelineBranchesitemlatestRun::typeIsSet() const
{
    return m_TypeIsSet;
}

void PipelineBranchesitemlatestRun::unsetType()
{
    m_TypeIsSet = false;
}
utility::string_t PipelineBranchesitemlatestRun::getCommitId() const
{
    return m_CommitId;
}

void PipelineBranchesitemlatestRun::setCommitId(const utility::string_t& value)
{
    m_CommitId = value;
    m_CommitIdIsSet = true;
}

bool PipelineBranchesitemlatestRun::commitIdIsSet() const
{
    return m_CommitIdIsSet;
}

void PipelineBranchesitemlatestRun::unsetCommitId()
{
    m_CommitIdIsSet = false;
}
utility::string_t PipelineBranchesitemlatestRun::getClass() const
{
    return m__class;
}

void PipelineBranchesitemlatestRun::setClass(const utility::string_t& value)
{
    m__class = value;
    m__classIsSet = true;
}

bool PipelineBranchesitemlatestRun::r_classIsSet() const
{
    return m__classIsSet;
}

void PipelineBranchesitemlatestRun::unset_class()
{
    m__classIsSet = false;
}
}
}
}
}


