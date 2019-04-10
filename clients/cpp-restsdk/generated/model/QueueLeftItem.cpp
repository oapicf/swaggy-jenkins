/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 3.2.1-SNAPSHOT.
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
        val[utility::conversions::to_string_t("_class")] = ModelBase::toJson(m__class);
    }
    {
        std::vector<web::json::value> jsonArray;
        for( auto& item : m_Actions )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        if(jsonArray.size() > 0)
        {
            val[utility::conversions::to_string_t("actions")] = web::json::value::array(jsonArray);
        }
    }
    if(m_BlockedIsSet)
    {
        val[utility::conversions::to_string_t("blocked")] = ModelBase::toJson(m_Blocked);
    }
    if(m_BuildableIsSet)
    {
        val[utility::conversions::to_string_t("buildable")] = ModelBase::toJson(m_Buildable);
    }
    if(m_IdIsSet)
    {
        val[utility::conversions::to_string_t("id")] = ModelBase::toJson(m_Id);
    }
    if(m_InQueueSinceIsSet)
    {
        val[utility::conversions::to_string_t("inQueueSince")] = ModelBase::toJson(m_InQueueSince);
    }
    if(m_ParamsIsSet)
    {
        val[utility::conversions::to_string_t("params")] = ModelBase::toJson(m_Params);
    }
    if(m_StuckIsSet)
    {
        val[utility::conversions::to_string_t("stuck")] = ModelBase::toJson(m_Stuck);
    }
    if(m_TaskIsSet)
    {
        val[utility::conversions::to_string_t("task")] = ModelBase::toJson(m_Task);
    }
    if(m_UrlIsSet)
    {
        val[utility::conversions::to_string_t("url")] = ModelBase::toJson(m_Url);
    }
    if(m_WhyIsSet)
    {
        val[utility::conversions::to_string_t("why")] = ModelBase::toJson(m_Why);
    }
    if(m_CancelledIsSet)
    {
        val[utility::conversions::to_string_t("cancelled")] = ModelBase::toJson(m_Cancelled);
    }
    if(m_ExecutableIsSet)
    {
        val[utility::conversions::to_string_t("executable")] = ModelBase::toJson(m_Executable);
    }

    return val;
}

void QueueLeftItem::fromJson(web::json::value& val)
{
    if(val.has_field(utility::conversions::to_string_t("_class")))
    {
        setClass(ModelBase::stringFromJson(val[utility::conversions::to_string_t("_class")]));
    }
    {
        m_Actions.clear();
        std::vector<web::json::value> jsonArray;
        if(val.has_field(utility::conversions::to_string_t("actions")))
        {
        for( auto& item : val[utility::conversions::to_string_t("actions")].as_array() )
        {
            if(item.is_null())
            {
                m_Actions.push_back( std::shared_ptr<CauseAction>(nullptr) );
            }
            else
            {
                std::shared_ptr<CauseAction> newItem(new CauseAction());
                newItem->fromJson(item);
                m_Actions.push_back( newItem );
            }
        }
        }
    }
    if(val.has_field(utility::conversions::to_string_t("blocked")))
    {
        setBlocked(ModelBase::boolFromJson(val[utility::conversions::to_string_t("blocked")]));
    }
    if(val.has_field(utility::conversions::to_string_t("buildable")))
    {
        setBuildable(ModelBase::boolFromJson(val[utility::conversions::to_string_t("buildable")]));
    }
    if(val.has_field(utility::conversions::to_string_t("id")))
    {
        setId(ModelBase::int32_tFromJson(val[utility::conversions::to_string_t("id")]));
    }
    if(val.has_field(utility::conversions::to_string_t("inQueueSince")))
    {
        setInQueueSince(ModelBase::int32_tFromJson(val[utility::conversions::to_string_t("inQueueSince")]));
    }
    if(val.has_field(utility::conversions::to_string_t("params")))
    {
        setParams(ModelBase::stringFromJson(val[utility::conversions::to_string_t("params")]));
    }
    if(val.has_field(utility::conversions::to_string_t("stuck")))
    {
        setStuck(ModelBase::boolFromJson(val[utility::conversions::to_string_t("stuck")]));
    }
    if(val.has_field(utility::conversions::to_string_t("task")))
    {
        if(!val[utility::conversions::to_string_t("task")].is_null())
        {
            std::shared_ptr<FreeStyleProject> newItem(new FreeStyleProject());
            newItem->fromJson(val[utility::conversions::to_string_t("task")]);
            setTask( newItem );
        }
    }
    if(val.has_field(utility::conversions::to_string_t("url")))
    {
        setUrl(ModelBase::stringFromJson(val[utility::conversions::to_string_t("url")]));
    }
    if(val.has_field(utility::conversions::to_string_t("why")))
    {
        setWhy(ModelBase::stringFromJson(val[utility::conversions::to_string_t("why")]));
    }
    if(val.has_field(utility::conversions::to_string_t("cancelled")))
    {
        setCancelled(ModelBase::boolFromJson(val[utility::conversions::to_string_t("cancelled")]));
    }
    if(val.has_field(utility::conversions::to_string_t("executable")))
    {
        if(!val[utility::conversions::to_string_t("executable")].is_null())
        {
            std::shared_ptr<FreeStyleBuild> newItem(new FreeStyleBuild());
            newItem->fromJson(val[utility::conversions::to_string_t("executable")]);
            setExecutable( newItem );
        }
    }
}

void QueueLeftItem::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(m__classIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("_class"), m__class));
    }
    {
        std::vector<web::json::value> jsonArray;
        for( auto& item : m_Actions )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        
        if(jsonArray.size() > 0)
        {
            multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("actions"), web::json::value::array(jsonArray), utility::conversions::to_string_t("application/json")));
        }
    }
    if(m_BlockedIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("blocked"), m_Blocked));
    }
    if(m_BuildableIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("buildable"), m_Buildable));
    }
    if(m_IdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("id"), m_Id));
    }
    if(m_InQueueSinceIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("inQueueSince"), m_InQueueSince));
    }
    if(m_ParamsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("params"), m_Params));
    }
    if(m_StuckIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("stuck"), m_Stuck));
    }
    if(m_TaskIsSet)
    {
        if (m_Task.get())
        {
            m_Task->toMultipart(multipart, utility::conversions::to_string_t("task."));
        }
    }
    if(m_UrlIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("url"), m_Url));
    }
    if(m_WhyIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("why"), m_Why));
    }
    if(m_CancelledIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("cancelled"), m_Cancelled));
    }
    if(m_ExecutableIsSet)
    {
        if (m_Executable.get())
        {
            m_Executable->toMultipart(multipart, utility::conversions::to_string_t("executable."));
        }
    }
}

void QueueLeftItem::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("_class")))
    {
        setClass(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("_class"))));
    }
    {
        m_Actions.clear();
        if(multipart->hasContent(utility::conversions::to_string_t("actions")))
        {

        web::json::value jsonArray = web::json::value::parse(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("actions"))));
        for( auto& item : jsonArray.as_array() )
        {
            if(item.is_null())
            {
                m_Actions.push_back( std::shared_ptr<CauseAction>(nullptr) );
            }
            else
            {
                std::shared_ptr<CauseAction> newItem(new CauseAction());
                newItem->fromJson(item);
                m_Actions.push_back( newItem );
            }
        }
        }
    }
    if(multipart->hasContent(utility::conversions::to_string_t("blocked")))
    {
        setBlocked(ModelBase::boolFromHttpContent(multipart->getContent(utility::conversions::to_string_t("blocked"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("buildable")))
    {
        setBuildable(ModelBase::boolFromHttpContent(multipart->getContent(utility::conversions::to_string_t("buildable"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("id")))
    {
        setId(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("id"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("inQueueSince")))
    {
        setInQueueSince(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("inQueueSince"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("params")))
    {
        setParams(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("params"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("stuck")))
    {
        setStuck(ModelBase::boolFromHttpContent(multipart->getContent(utility::conversions::to_string_t("stuck"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("task")))
    {
        if(multipart->hasContent(utility::conversions::to_string_t("task")))
        {
            std::shared_ptr<FreeStyleProject> newItem(new FreeStyleProject());
            newItem->fromMultiPart(multipart, utility::conversions::to_string_t("task."));
            setTask( newItem );
        }
    }
    if(multipart->hasContent(utility::conversions::to_string_t("url")))
    {
        setUrl(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("url"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("why")))
    {
        setWhy(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("why"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("cancelled")))
    {
        setCancelled(ModelBase::boolFromHttpContent(multipart->getContent(utility::conversions::to_string_t("cancelled"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("executable")))
    {
        if(multipart->hasContent(utility::conversions::to_string_t("executable")))
        {
            std::shared_ptr<FreeStyleBuild> newItem(new FreeStyleBuild());
            newItem->fromMultiPart(multipart, utility::conversions::to_string_t("executable."));
            setExecutable( newItem );
        }
    }
}

utility::string_t QueueLeftItem::getClass() const
{
    return m__class;
}


void QueueLeftItem::setClass(utility::string_t value)
{
    m__class = value;
    m__classIsSet = true;
}
bool QueueLeftItem::_classIsSet() const
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

void QueueLeftItem::setActions(std::vector<std::shared_ptr<CauseAction>> value)
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


void QueueLeftItem::setParams(utility::string_t value)
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


void QueueLeftItem::setTask(std::shared_ptr<FreeStyleProject> value)
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


void QueueLeftItem::setUrl(utility::string_t value)
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


void QueueLeftItem::setWhy(utility::string_t value)
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


void QueueLeftItem::setExecutable(std::shared_ptr<FreeStyleBuild> value)
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

