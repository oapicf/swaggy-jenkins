/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "BranchImpllinks.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




BranchImpllinks::BranchImpllinks()
{
    m_SelfIsSet = false;
    m_ActionsIsSet = false;
    m_RunsIsSet = false;
    m_QueueIsSet = false;
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
}

BranchImpllinks::~BranchImpllinks()
{
}

void BranchImpllinks::validate()
{
    // TODO: implement validation
}

web::json::value BranchImpllinks::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_SelfIsSet)
    {
        val[utility::conversions::to_string_t(U("self"))] = ModelBase::toJson(m_Self);
    }
    if(m_ActionsIsSet)
    {
        val[utility::conversions::to_string_t(U("actions"))] = ModelBase::toJson(m_Actions);
    }
    if(m_RunsIsSet)
    {
        val[utility::conversions::to_string_t(U("runs"))] = ModelBase::toJson(m_Runs);
    }
    if(m_QueueIsSet)
    {
        val[utility::conversions::to_string_t(U("queue"))] = ModelBase::toJson(m_Queue);
    }
    if(m__classIsSet)
    {
        val[utility::conversions::to_string_t(U("_class"))] = ModelBase::toJson(m__class);
    }

    return val;
}

bool BranchImpllinks::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("self"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("self")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<Link> refVal_self;
            ok &= ModelBase::fromJson(fieldValue, refVal_self);
            setSelf(refVal_self);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("actions"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("actions")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<Link> refVal_actions;
            ok &= ModelBase::fromJson(fieldValue, refVal_actions);
            setActions(refVal_actions);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("runs"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("runs")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<Link> refVal_runs;
            ok &= ModelBase::fromJson(fieldValue, refVal_runs);
            setRuns(refVal_runs);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("queue"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("queue")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<Link> refVal_queue;
            ok &= ModelBase::fromJson(fieldValue, refVal_queue);
            setQueue(refVal_queue);
        }
    }
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
    return ok;
}

void BranchImpllinks::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_SelfIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("self")), m_Self));
    }
    if(m_ActionsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("actions")), m_Actions));
    }
    if(m_RunsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("runs")), m_Runs));
    }
    if(m_QueueIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("queue")), m_Queue));
    }
    if(m__classIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("_class")), m__class));
    }
}

bool BranchImpllinks::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("self"))))
    {
        std::shared_ptr<Link> refVal_self;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("self"))), refVal_self );
        setSelf(refVal_self);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("actions"))))
    {
        std::shared_ptr<Link> refVal_actions;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("actions"))), refVal_actions );
        setActions(refVal_actions);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("runs"))))
    {
        std::shared_ptr<Link> refVal_runs;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("runs"))), refVal_runs );
        setRuns(refVal_runs);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("queue"))))
    {
        std::shared_ptr<Link> refVal_queue;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("queue"))), refVal_queue );
        setQueue(refVal_queue);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("_class"))))
    {
        utility::string_t refVal__class;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("_class"))), refVal__class );
        setClass(refVal__class);
    }
    return ok;
}

std::shared_ptr<Link> BranchImpllinks::getSelf() const
{
    return m_Self;
}

void BranchImpllinks::setSelf(const std::shared_ptr<Link>& value)
{
    m_Self = value;
    m_SelfIsSet = true;
}

bool BranchImpllinks::selfIsSet() const
{
    return m_SelfIsSet;
}

void BranchImpllinks::unsetSelf()
{
    m_SelfIsSet = false;
}
std::shared_ptr<Link> BranchImpllinks::getActions() const
{
    return m_Actions;
}

void BranchImpllinks::setActions(const std::shared_ptr<Link>& value)
{
    m_Actions = value;
    m_ActionsIsSet = true;
}

bool BranchImpllinks::actionsIsSet() const
{
    return m_ActionsIsSet;
}

void BranchImpllinks::unsetActions()
{
    m_ActionsIsSet = false;
}
std::shared_ptr<Link> BranchImpllinks::getRuns() const
{
    return m_Runs;
}

void BranchImpllinks::setRuns(const std::shared_ptr<Link>& value)
{
    m_Runs = value;
    m_RunsIsSet = true;
}

bool BranchImpllinks::runsIsSet() const
{
    return m_RunsIsSet;
}

void BranchImpllinks::unsetRuns()
{
    m_RunsIsSet = false;
}
std::shared_ptr<Link> BranchImpllinks::getQueue() const
{
    return m_Queue;
}

void BranchImpllinks::setQueue(const std::shared_ptr<Link>& value)
{
    m_Queue = value;
    m_QueueIsSet = true;
}

bool BranchImpllinks::queueIsSet() const
{
    return m_QueueIsSet;
}

void BranchImpllinks::unsetQueue()
{
    m_QueueIsSet = false;
}
utility::string_t BranchImpllinks::getClass() const
{
    return m__class;
}

void BranchImpllinks::setClass(const utility::string_t& value)
{
    m__class = value;
    m__classIsSet = true;
}

bool BranchImpllinks::r_classIsSet() const
{
    return m__classIsSet;
}

void BranchImpllinks::unset_class()
{
    m__classIsSet = false;
}
}
}
}
}


