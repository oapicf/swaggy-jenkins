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



#include "QueueLeftItem.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




QueueLeftItem::QueueLeftItem()
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
    m_Cancelled = false;
    m_CancelledIsSet = false;
    m_ExecutableIsSet = false;
}

QueueLeftItem::~QueueLeftItem()
{
}

void QueueLeftItem::validate()
{
    // TODO: implement validation
}

web::json::value QueueLeftItem::toJson() const
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
    if(m_CancelledIsSet)
    {
        val[utility::conversions::to_string_t(U("cancelled"))] = ModelBase::toJson(m_Cancelled);
    }
    if(m_ExecutableIsSet)
    {
        val[utility::conversions::to_string_t(U("executable"))] = ModelBase::toJson(m_Executable);
    }

    return val;
}

bool QueueLeftItem::fromJson(const web::json::value& val)
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
    if(val.has_field(utility::conversions::to_string_t(U("actions"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("actions")));
        if(!fieldValue.is_null())
        {
            std::vector<std::shared_ptr<CauseAction>> refVal_actions;
            ok &= ModelBase::fromJson(fieldValue, refVal_actions);
            setActions(refVal_actions);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("blocked"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("blocked")));
        if(!fieldValue.is_null())
        {
            bool refVal_blocked;
            ok &= ModelBase::fromJson(fieldValue, refVal_blocked);
            setBlocked(refVal_blocked);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("buildable"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("buildable")));
        if(!fieldValue.is_null())
        {
            bool refVal_buildable;
            ok &= ModelBase::fromJson(fieldValue, refVal_buildable);
            setBuildable(refVal_buildable);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("id")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_id);
            setId(refVal_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("inQueueSince"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("inQueueSince")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_inQueueSince;
            ok &= ModelBase::fromJson(fieldValue, refVal_inQueueSince);
            setInQueueSince(refVal_inQueueSince);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("params"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("params")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_params;
            ok &= ModelBase::fromJson(fieldValue, refVal_params);
            setParams(refVal_params);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("stuck"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("stuck")));
        if(!fieldValue.is_null())
        {
            bool refVal_stuck;
            ok &= ModelBase::fromJson(fieldValue, refVal_stuck);
            setStuck(refVal_stuck);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("task"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("task")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<FreeStyleProject> refVal_task;
            ok &= ModelBase::fromJson(fieldValue, refVal_task);
            setTask(refVal_task);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("url"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("url")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_url;
            ok &= ModelBase::fromJson(fieldValue, refVal_url);
            setUrl(refVal_url);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("why"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("why")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_why;
            ok &= ModelBase::fromJson(fieldValue, refVal_why);
            setWhy(refVal_why);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("cancelled"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("cancelled")));
        if(!fieldValue.is_null())
        {
            bool refVal_cancelled;
            ok &= ModelBase::fromJson(fieldValue, refVal_cancelled);
            setCancelled(refVal_cancelled);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("executable"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("executable")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<FreeStyleBuild> refVal_executable;
            ok &= ModelBase::fromJson(fieldValue, refVal_executable);
            setExecutable(refVal_executable);
        }
    }
    return ok;
}

void QueueLeftItem::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m_CancelledIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("cancelled")), m_Cancelled));
    }
    if(m_ExecutableIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("executable")), m_Executable));
    }
}

bool QueueLeftItem::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("actions"))))
    {
        std::vector<std::shared_ptr<CauseAction>> refVal_actions;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("actions"))), refVal_actions );
        setActions(refVal_actions);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("blocked"))))
    {
        bool refVal_blocked;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("blocked"))), refVal_blocked );
        setBlocked(refVal_blocked);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("buildable"))))
    {
        bool refVal_buildable;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("buildable"))), refVal_buildable );
        setBuildable(refVal_buildable);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("id"))))
    {
        int32_t refVal_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("id"))), refVal_id );
        setId(refVal_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("inQueueSince"))))
    {
        int32_t refVal_inQueueSince;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("inQueueSince"))), refVal_inQueueSince );
        setInQueueSince(refVal_inQueueSince);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("params"))))
    {
        utility::string_t refVal_params;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("params"))), refVal_params );
        setParams(refVal_params);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("stuck"))))
    {
        bool refVal_stuck;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("stuck"))), refVal_stuck );
        setStuck(refVal_stuck);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("task"))))
    {
        std::shared_ptr<FreeStyleProject> refVal_task;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("task"))), refVal_task );
        setTask(refVal_task);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("url"))))
    {
        utility::string_t refVal_url;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("url"))), refVal_url );
        setUrl(refVal_url);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("why"))))
    {
        utility::string_t refVal_why;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("why"))), refVal_why );
        setWhy(refVal_why);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("cancelled"))))
    {
        bool refVal_cancelled;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("cancelled"))), refVal_cancelled );
        setCancelled(refVal_cancelled);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("executable"))))
    {
        std::shared_ptr<FreeStyleBuild> refVal_executable;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("executable"))), refVal_executable );
        setExecutable(refVal_executable);
    }
    return ok;
}

utility::string_t QueueLeftItem::getClass() const
{
    return m__class;
}

void QueueLeftItem::setClass(const utility::string_t& value)
{
    m__class = value;
    m__classIsSet = true;
}

bool QueueLeftItem::r_classIsSet() const
{
    return m__classIsSet;
}

void QueueLeftItem::unset_class()
{
    m__classIsSet = false;
}
std::vector<std::shared_ptr<CauseAction>>& QueueLeftItem::getActions()
{
    return m_Actions;
}

void QueueLeftItem::setActions(const std::vector<std::shared_ptr<CauseAction>>& value)
{
    m_Actions = value;
    m_ActionsIsSet = true;
}

bool QueueLeftItem::actionsIsSet() const
{
    return m_ActionsIsSet;
}

void QueueLeftItem::unsetActions()
{
    m_ActionsIsSet = false;
}
bool QueueLeftItem::isBlocked() const
{
    return m_Blocked;
}

void QueueLeftItem::setBlocked(bool value)
{
    m_Blocked = value;
    m_BlockedIsSet = true;
}

bool QueueLeftItem::blockedIsSet() const
{
    return m_BlockedIsSet;
}

void QueueLeftItem::unsetBlocked()
{
    m_BlockedIsSet = false;
}
bool QueueLeftItem::isBuildable() const
{
    return m_Buildable;
}

void QueueLeftItem::setBuildable(bool value)
{
    m_Buildable = value;
    m_BuildableIsSet = true;
}

bool QueueLeftItem::buildableIsSet() const
{
    return m_BuildableIsSet;
}

void QueueLeftItem::unsetBuildable()
{
    m_BuildableIsSet = false;
}
int32_t QueueLeftItem::getId() const
{
    return m_Id;
}

void QueueLeftItem::setId(int32_t value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool QueueLeftItem::idIsSet() const
{
    return m_IdIsSet;
}

void QueueLeftItem::unsetId()
{
    m_IdIsSet = false;
}
int32_t QueueLeftItem::getInQueueSince() const
{
    return m_InQueueSince;
}

void QueueLeftItem::setInQueueSince(int32_t value)
{
    m_InQueueSince = value;
    m_InQueueSinceIsSet = true;
}

bool QueueLeftItem::inQueueSinceIsSet() const
{
    return m_InQueueSinceIsSet;
}

void QueueLeftItem::unsetInQueueSince()
{
    m_InQueueSinceIsSet = false;
}
utility::string_t QueueLeftItem::getParams() const
{
    return m_Params;
}

void QueueLeftItem::setParams(const utility::string_t& value)
{
    m_Params = value;
    m_ParamsIsSet = true;
}

bool QueueLeftItem::paramsIsSet() const
{
    return m_ParamsIsSet;
}

void QueueLeftItem::unsetParams()
{
    m_ParamsIsSet = false;
}
bool QueueLeftItem::isStuck() const
{
    return m_Stuck;
}

void QueueLeftItem::setStuck(bool value)
{
    m_Stuck = value;
    m_StuckIsSet = true;
}

bool QueueLeftItem::stuckIsSet() const
{
    return m_StuckIsSet;
}

void QueueLeftItem::unsetStuck()
{
    m_StuckIsSet = false;
}
std::shared_ptr<FreeStyleProject> QueueLeftItem::getTask() const
{
    return m_Task;
}

void QueueLeftItem::setTask(const std::shared_ptr<FreeStyleProject>& value)
{
    m_Task = value;
    m_TaskIsSet = true;
}

bool QueueLeftItem::taskIsSet() const
{
    return m_TaskIsSet;
}

void QueueLeftItem::unsetTask()
{
    m_TaskIsSet = false;
}
utility::string_t QueueLeftItem::getUrl() const
{
    return m_Url;
}

void QueueLeftItem::setUrl(const utility::string_t& value)
{
    m_Url = value;
    m_UrlIsSet = true;
}

bool QueueLeftItem::urlIsSet() const
{
    return m_UrlIsSet;
}

void QueueLeftItem::unsetUrl()
{
    m_UrlIsSet = false;
}
utility::string_t QueueLeftItem::getWhy() const
{
    return m_Why;
}

void QueueLeftItem::setWhy(const utility::string_t& value)
{
    m_Why = value;
    m_WhyIsSet = true;
}

bool QueueLeftItem::whyIsSet() const
{
    return m_WhyIsSet;
}

void QueueLeftItem::unsetWhy()
{
    m_WhyIsSet = false;
}
bool QueueLeftItem::isCancelled() const
{
    return m_Cancelled;
}

void QueueLeftItem::setCancelled(bool value)
{
    m_Cancelled = value;
    m_CancelledIsSet = true;
}

bool QueueLeftItem::cancelledIsSet() const
{
    return m_CancelledIsSet;
}

void QueueLeftItem::unsetCancelled()
{
    m_CancelledIsSet = false;
}
std::shared_ptr<FreeStyleBuild> QueueLeftItem::getExecutable() const
{
    return m_Executable;
}

void QueueLeftItem::setExecutable(const std::shared_ptr<FreeStyleBuild>& value)
{
    m_Executable = value;
    m_ExecutableIsSet = true;
}

bool QueueLeftItem::executableIsSet() const
{
    return m_ExecutableIsSet;
}

void QueueLeftItem::unsetExecutable()
{
    m_ExecutableIsSet = false;
}
}
}
}
}


