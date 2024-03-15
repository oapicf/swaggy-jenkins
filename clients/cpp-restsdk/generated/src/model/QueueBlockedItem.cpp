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



#include "CppRestOpenAPIClient/model/QueueBlockedItem.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



QueueBlockedItem::QueueBlockedItem()
{
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
    m_ActionsIsSet = false;
    m_Blocked = false;
    m_BlockedIsSet = false;
    m_Buildable = false;
    m_BuildableIsSet = false;
    m_Id = 0;
    m_IdIsSet = false;
    m_InQueueSince = 0;
    m_InQueueSinceIsSet = false;
    m_Params = utility::conversions::to_string_t("");
    m_ParamsIsSet = false;
    m_Stuck = false;
    m_StuckIsSet = false;
    m_TaskIsSet = false;
    m_Url = utility::conversions::to_string_t("");
    m_UrlIsSet = false;
    m_Why = utility::conversions::to_string_t("");
    m_WhyIsSet = false;
    m_BuildableStartMilliseconds = 0;
    m_BuildableStartMillisecondsIsSet = false;
}

QueueBlockedItem::~QueueBlockedItem()
{
}

void QueueBlockedItem::validate()
{
    // TODO: implement validation
}

web::json::value QueueBlockedItem::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m__classIsSet)
    {
        val[utility::conversions::to_string_t(U("_class"))] = ModelBase::toJson(m__class);
    }
    if(m_ActionsIsSet)
    {
        val[utility::conversions::to_string_t(U("actions"))] = ModelBase::toJson(m_Actions);
    }
    if(m_BlockedIsSet)
    {
        val[utility::conversions::to_string_t(U("blocked"))] = ModelBase::toJson(m_Blocked);
    }
    if(m_BuildableIsSet)
    {
        val[utility::conversions::to_string_t(U("buildable"))] = ModelBase::toJson(m_Buildable);
    }
    if(m_IdIsSet)
    {
        val[utility::conversions::to_string_t(U("id"))] = ModelBase::toJson(m_Id);
    }
    if(m_InQueueSinceIsSet)
    {
        val[utility::conversions::to_string_t(U("inQueueSince"))] = ModelBase::toJson(m_InQueueSince);
    }
    if(m_ParamsIsSet)
    {
        val[utility::conversions::to_string_t(U("params"))] = ModelBase::toJson(m_Params);
    }
    if(m_StuckIsSet)
    {
        val[utility::conversions::to_string_t(U("stuck"))] = ModelBase::toJson(m_Stuck);
    }
    if(m_TaskIsSet)
    {
        val[utility::conversions::to_string_t(U("task"))] = ModelBase::toJson(m_Task);
    }
    if(m_UrlIsSet)
    {
        val[utility::conversions::to_string_t(U("url"))] = ModelBase::toJson(m_Url);
    }
    if(m_WhyIsSet)
    {
        val[utility::conversions::to_string_t(U("why"))] = ModelBase::toJson(m_Why);
    }
    if(m_BuildableStartMillisecondsIsSet)
    {
        val[utility::conversions::to_string_t(U("buildableStartMilliseconds"))] = ModelBase::toJson(m_BuildableStartMilliseconds);
    }

    return val;
}

bool QueueBlockedItem::fromJson(const web::json::value& val)
{
    bool ok = true;
    
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
    if(val.has_field(utility::conversions::to_string_t(U("actions"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("actions")));
        if(!fieldValue.is_null())
        {
            std::vector<std::shared_ptr<CauseAction>> refVal_setActions;
            ok &= ModelBase::fromJson(fieldValue, refVal_setActions);
            setActions(refVal_setActions);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("blocked"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("blocked")));
        if(!fieldValue.is_null())
        {
            bool refVal_setBlocked;
            ok &= ModelBase::fromJson(fieldValue, refVal_setBlocked);
            setBlocked(refVal_setBlocked);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("buildable"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("buildable")));
        if(!fieldValue.is_null())
        {
            bool refVal_setBuildable;
            ok &= ModelBase::fromJson(fieldValue, refVal_setBuildable);
            setBuildable(refVal_setBuildable);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("id")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_setId;
            ok &= ModelBase::fromJson(fieldValue, refVal_setId);
            setId(refVal_setId);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("inQueueSince"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("inQueueSince")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_setInQueueSince;
            ok &= ModelBase::fromJson(fieldValue, refVal_setInQueueSince);
            setInQueueSince(refVal_setInQueueSince);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("params"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("params")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setParams;
            ok &= ModelBase::fromJson(fieldValue, refVal_setParams);
            setParams(refVal_setParams);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("stuck"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("stuck")));
        if(!fieldValue.is_null())
        {
            bool refVal_setStuck;
            ok &= ModelBase::fromJson(fieldValue, refVal_setStuck);
            setStuck(refVal_setStuck);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("task"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("task")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<FreeStyleProject> refVal_setTask;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTask);
            setTask(refVal_setTask);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("url"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("url")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setUrl;
            ok &= ModelBase::fromJson(fieldValue, refVal_setUrl);
            setUrl(refVal_setUrl);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("why"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("why")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setWhy;
            ok &= ModelBase::fromJson(fieldValue, refVal_setWhy);
            setWhy(refVal_setWhy);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("buildableStartMilliseconds"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("buildableStartMilliseconds")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_setBuildableStartMilliseconds;
            ok &= ModelBase::fromJson(fieldValue, refVal_setBuildableStartMilliseconds);
            setBuildableStartMilliseconds(refVal_setBuildableStartMilliseconds);
        }
    }
    return ok;
}

void QueueBlockedItem::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m_ActionsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("actions")), m_Actions));
    }
    if(m_BlockedIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("blocked")), m_Blocked));
    }
    if(m_BuildableIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("buildable")), m_Buildable));
    }
    if(m_IdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("id")), m_Id));
    }
    if(m_InQueueSinceIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("inQueueSince")), m_InQueueSince));
    }
    if(m_ParamsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("params")), m_Params));
    }
    if(m_StuckIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("stuck")), m_Stuck));
    }
    if(m_TaskIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("task")), m_Task));
    }
    if(m_UrlIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("url")), m_Url));
    }
    if(m_WhyIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("why")), m_Why));
    }
    if(m_BuildableStartMillisecondsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("buildableStartMilliseconds")), m_BuildableStartMilliseconds));
    }
}

bool QueueBlockedItem::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("_class"))))
    {
        utility::string_t refVal_setClass;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("_class"))), refVal_setClass );
        setClass(refVal_setClass);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("actions"))))
    {
        std::vector<std::shared_ptr<CauseAction>> refVal_setActions;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("actions"))), refVal_setActions );
        setActions(refVal_setActions);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("blocked"))))
    {
        bool refVal_setBlocked;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("blocked"))), refVal_setBlocked );
        setBlocked(refVal_setBlocked);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("buildable"))))
    {
        bool refVal_setBuildable;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("buildable"))), refVal_setBuildable );
        setBuildable(refVal_setBuildable);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("id"))))
    {
        int32_t refVal_setId;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("id"))), refVal_setId );
        setId(refVal_setId);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("inQueueSince"))))
    {
        int32_t refVal_setInQueueSince;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("inQueueSince"))), refVal_setInQueueSince );
        setInQueueSince(refVal_setInQueueSince);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("params"))))
    {
        utility::string_t refVal_setParams;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("params"))), refVal_setParams );
        setParams(refVal_setParams);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("stuck"))))
    {
        bool refVal_setStuck;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("stuck"))), refVal_setStuck );
        setStuck(refVal_setStuck);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("task"))))
    {
        std::shared_ptr<FreeStyleProject> refVal_setTask;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("task"))), refVal_setTask );
        setTask(refVal_setTask);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("url"))))
    {
        utility::string_t refVal_setUrl;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("url"))), refVal_setUrl );
        setUrl(refVal_setUrl);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("why"))))
    {
        utility::string_t refVal_setWhy;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("why"))), refVal_setWhy );
        setWhy(refVal_setWhy);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("buildableStartMilliseconds"))))
    {
        int32_t refVal_setBuildableStartMilliseconds;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("buildableStartMilliseconds"))), refVal_setBuildableStartMilliseconds );
        setBuildableStartMilliseconds(refVal_setBuildableStartMilliseconds);
    }
    return ok;
}

utility::string_t QueueBlockedItem::getClass() const
{
    return m__class;
}

void QueueBlockedItem::setClass(const utility::string_t& value)
{
    m__class = value;
    m__classIsSet = true;
}

bool QueueBlockedItem::r_classIsSet() const
{
    return m__classIsSet;
}

void QueueBlockedItem::unset_class()
{
    m__classIsSet = false;
}
std::vector<std::shared_ptr<CauseAction>>& QueueBlockedItem::getActions()
{
    return m_Actions;
}

void QueueBlockedItem::setActions(const std::vector<std::shared_ptr<CauseAction>>& value)
{
    m_Actions = value;
    m_ActionsIsSet = true;
}

bool QueueBlockedItem::actionsIsSet() const
{
    return m_ActionsIsSet;
}

void QueueBlockedItem::unsetActions()
{
    m_ActionsIsSet = false;
}
bool QueueBlockedItem::isBlocked() const
{
    return m_Blocked;
}

void QueueBlockedItem::setBlocked(bool value)
{
    m_Blocked = value;
    m_BlockedIsSet = true;
}

bool QueueBlockedItem::blockedIsSet() const
{
    return m_BlockedIsSet;
}

void QueueBlockedItem::unsetBlocked()
{
    m_BlockedIsSet = false;
}
bool QueueBlockedItem::isBuildable() const
{
    return m_Buildable;
}

void QueueBlockedItem::setBuildable(bool value)
{
    m_Buildable = value;
    m_BuildableIsSet = true;
}

bool QueueBlockedItem::buildableIsSet() const
{
    return m_BuildableIsSet;
}

void QueueBlockedItem::unsetBuildable()
{
    m_BuildableIsSet = false;
}
int32_t QueueBlockedItem::getId() const
{
    return m_Id;
}

void QueueBlockedItem::setId(int32_t value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool QueueBlockedItem::idIsSet() const
{
    return m_IdIsSet;
}

void QueueBlockedItem::unsetId()
{
    m_IdIsSet = false;
}
int32_t QueueBlockedItem::getInQueueSince() const
{
    return m_InQueueSince;
}

void QueueBlockedItem::setInQueueSince(int32_t value)
{
    m_InQueueSince = value;
    m_InQueueSinceIsSet = true;
}

bool QueueBlockedItem::inQueueSinceIsSet() const
{
    return m_InQueueSinceIsSet;
}

void QueueBlockedItem::unsetInQueueSince()
{
    m_InQueueSinceIsSet = false;
}
utility::string_t QueueBlockedItem::getParams() const
{
    return m_Params;
}

void QueueBlockedItem::setParams(const utility::string_t& value)
{
    m_Params = value;
    m_ParamsIsSet = true;
}

bool QueueBlockedItem::paramsIsSet() const
{
    return m_ParamsIsSet;
}

void QueueBlockedItem::unsetParams()
{
    m_ParamsIsSet = false;
}
bool QueueBlockedItem::isStuck() const
{
    return m_Stuck;
}

void QueueBlockedItem::setStuck(bool value)
{
    m_Stuck = value;
    m_StuckIsSet = true;
}

bool QueueBlockedItem::stuckIsSet() const
{
    return m_StuckIsSet;
}

void QueueBlockedItem::unsetStuck()
{
    m_StuckIsSet = false;
}
std::shared_ptr<FreeStyleProject> QueueBlockedItem::getTask() const
{
    return m_Task;
}

void QueueBlockedItem::setTask(const std::shared_ptr<FreeStyleProject>& value)
{
    m_Task = value;
    m_TaskIsSet = true;
}

bool QueueBlockedItem::taskIsSet() const
{
    return m_TaskIsSet;
}

void QueueBlockedItem::unsetTask()
{
    m_TaskIsSet = false;
}
utility::string_t QueueBlockedItem::getUrl() const
{
    return m_Url;
}

void QueueBlockedItem::setUrl(const utility::string_t& value)
{
    m_Url = value;
    m_UrlIsSet = true;
}

bool QueueBlockedItem::urlIsSet() const
{
    return m_UrlIsSet;
}

void QueueBlockedItem::unsetUrl()
{
    m_UrlIsSet = false;
}
utility::string_t QueueBlockedItem::getWhy() const
{
    return m_Why;
}

void QueueBlockedItem::setWhy(const utility::string_t& value)
{
    m_Why = value;
    m_WhyIsSet = true;
}

bool QueueBlockedItem::whyIsSet() const
{
    return m_WhyIsSet;
}

void QueueBlockedItem::unsetWhy()
{
    m_WhyIsSet = false;
}
int32_t QueueBlockedItem::getBuildableStartMilliseconds() const
{
    return m_BuildableStartMilliseconds;
}

void QueueBlockedItem::setBuildableStartMilliseconds(int32_t value)
{
    m_BuildableStartMilliseconds = value;
    m_BuildableStartMillisecondsIsSet = true;
}

bool QueueBlockedItem::buildableStartMillisecondsIsSet() const
{
    return m_BuildableStartMillisecondsIsSet;
}

void QueueBlockedItem::unsetBuildableStartMilliseconds()
{
    m_BuildableStartMillisecondsIsSet = false;
}
}
}
}
}


