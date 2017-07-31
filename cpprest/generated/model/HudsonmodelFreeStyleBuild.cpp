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



#include "HudsonmodelFreeStyleBuild.h"

namespace io {
namespace swagger {
namespace client {
namespace model {

HudsonmodelFreeStyleBuild::HudsonmodelFreeStyleBuild()
{
    m__class = U("");
    m__classIsSet = false;
    m_number = 0;
    m_numberIsSet = false;
    m_Url = U("");
    m_UrlIsSet = false;
    m_ActionsIsSet = false;
    m_Building = false;
    m_BuildingIsSet = false;
    m_Description = U("");
    m_DescriptionIsSet = false;
    m_DisplayName = U("");
    m_DisplayNameIsSet = false;
    m_Duration = 0;
    m_DurationIsSet = false;
    m_EstimatedDuration = 0;
    m_EstimatedDurationIsSet = false;
    m_Executor = U("");
    m_ExecutorIsSet = false;
    m_FullDisplayName = U("");
    m_FullDisplayNameIsSet = false;
    m_Id = U("");
    m_IdIsSet = false;
    m_KeepLog = false;
    m_KeepLogIsSet = false;
    m_QueueId = 0;
    m_QueueIdIsSet = false;
    m_Result = U("");
    m_ResultIsSet = false;
    m_Timestamp = 0;
    m_TimestampIsSet = false;
    m_BuiltOn = U("");
    m_BuiltOnIsSet = false;
    m_ChangeSetIsSet = false;
    
}

HudsonmodelFreeStyleBuild::~HudsonmodelFreeStyleBuild()
{
}

void HudsonmodelFreeStyleBuild::validate()
{
    // TODO: implement validation
}

web::json::value HudsonmodelFreeStyleBuild::toJson() const
{
    web::json::value val = web::json::value::object();

    if(m__classIsSet)
    {
        val[U("_class")] = ModelBase::toJson(m__class);
    }
    if(m_numberIsSet)
    {
        val[U("number")] = ModelBase::toJson(m_number);
    }
    if(m_UrlIsSet)
    {
        val[U("url")] = ModelBase::toJson(m_Url);
    }
    {
        std::vector<web::json::value> jsonArray;
        for( auto& item : m_Actions )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        
        if(jsonArray.size() > 0)
        {
            val[U("actions")] = web::json::value::array(jsonArray);
        }
    }
    if(m_BuildingIsSet)
    {
        val[U("building")] = ModelBase::toJson(m_Building);
    }
    if(m_DescriptionIsSet)
    {
        val[U("description")] = ModelBase::toJson(m_Description);
    }
    if(m_DisplayNameIsSet)
    {
        val[U("displayName")] = ModelBase::toJson(m_DisplayName);
    }
    if(m_DurationIsSet)
    {
        val[U("duration")] = ModelBase::toJson(m_Duration);
    }
    if(m_EstimatedDurationIsSet)
    {
        val[U("estimatedDuration")] = ModelBase::toJson(m_EstimatedDuration);
    }
    if(m_ExecutorIsSet)
    {
        val[U("executor")] = ModelBase::toJson(m_Executor);
    }
    if(m_FullDisplayNameIsSet)
    {
        val[U("fullDisplayName")] = ModelBase::toJson(m_FullDisplayName);
    }
    if(m_IdIsSet)
    {
        val[U("id")] = ModelBase::toJson(m_Id);
    }
    if(m_KeepLogIsSet)
    {
        val[U("keepLog")] = ModelBase::toJson(m_KeepLog);
    }
    if(m_QueueIdIsSet)
    {
        val[U("queueId")] = ModelBase::toJson(m_QueueId);
    }
    if(m_ResultIsSet)
    {
        val[U("result")] = ModelBase::toJson(m_Result);
    }
    if(m_TimestampIsSet)
    {
        val[U("timestamp")] = ModelBase::toJson(m_Timestamp);
    }
    if(m_BuiltOnIsSet)
    {
        val[U("builtOn")] = ModelBase::toJson(m_BuiltOn);
    }
    if(m_ChangeSetIsSet)
    {
        val[U("changeSet")] = ModelBase::toJson(m_ChangeSet);
    }
    

    return val;
}

void HudsonmodelFreeStyleBuild::fromJson(web::json::value& val)
{
    if(val.has_field(U("_class")))
    {
        setClass(ModelBase::stringFromJson(val[U("_class")]));
        
    }
    if(val.has_field(U("number")))
    {
        setNumber(ModelBase::int32_tFromJson(val[U("number")]));
    }
    if(val.has_field(U("url")))
    {
        setUrl(ModelBase::stringFromJson(val[U("url")]));
        
    }
    {
        m_Actions.clear();
        std::vector<web::json::value> jsonArray;
        if(val.has_field(U("actions")))
        {
        for( auto& item : val[U("actions")].as_array() )
        {
            
            if(item.is_null())
            {
                m_Actions.push_back( std::shared_ptr<HudsonmodelCauseAction>(nullptr) );
            }
            else
            {
                std::shared_ptr<HudsonmodelCauseAction> newItem(new HudsonmodelCauseAction());
                newItem->fromJson(item);
                m_Actions.push_back( newItem );
            }
            
        }
        }
    }
    if(val.has_field(U("building")))
    {
        setBuilding(ModelBase::boolFromJson(val[U("building")]));
    }
    if(val.has_field(U("description")))
    {
        setDescription(ModelBase::stringFromJson(val[U("description")]));
        
    }
    if(val.has_field(U("displayName")))
    {
        setDisplayName(ModelBase::stringFromJson(val[U("displayName")]));
        
    }
    if(val.has_field(U("duration")))
    {
        setDuration(ModelBase::int32_tFromJson(val[U("duration")]));
    }
    if(val.has_field(U("estimatedDuration")))
    {
        setEstimatedDuration(ModelBase::int32_tFromJson(val[U("estimatedDuration")]));
    }
    if(val.has_field(U("executor")))
    {
        setExecutor(ModelBase::stringFromJson(val[U("executor")]));
        
    }
    if(val.has_field(U("fullDisplayName")))
    {
        setFullDisplayName(ModelBase::stringFromJson(val[U("fullDisplayName")]));
        
    }
    if(val.has_field(U("id")))
    {
        setId(ModelBase::stringFromJson(val[U("id")]));
        
    }
    if(val.has_field(U("keepLog")))
    {
        setKeepLog(ModelBase::boolFromJson(val[U("keepLog")]));
    }
    if(val.has_field(U("queueId")))
    {
        setQueueId(ModelBase::int32_tFromJson(val[U("queueId")]));
    }
    if(val.has_field(U("result")))
    {
        setResult(ModelBase::stringFromJson(val[U("result")]));
        
    }
    if(val.has_field(U("timestamp")))
    {
        setTimestamp(ModelBase::int32_tFromJson(val[U("timestamp")]));
    }
    if(val.has_field(U("builtOn")))
    {
        setBuiltOn(ModelBase::stringFromJson(val[U("builtOn")]));
        
    }
    if(val.has_field(U("changeSet")))
    {
        if(!val[U("changeSet")].is_null())
        {
            std::shared_ptr<HudsonscmEmptyChangeLogSet> newItem(new HudsonscmEmptyChangeLogSet());
            newItem->fromJson(val[U("changeSet")]);
            setChangeSet( newItem );
        }
        
    }
    
}

void HudsonmodelFreeStyleBuild::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix[namePrefix.size() - 1] != U('.'))
    {
        namePrefix += U(".");
    }

    if(m__classIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("_class"), m__class));
        
    }
    if(m_numberIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("number"), m_number));
    }
    if(m_UrlIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("url"), m_Url));
        
    }
    {
        std::vector<web::json::value> jsonArray;
        for( auto& item : m_Actions )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        
        if(jsonArray.size() > 0)
        {
            multipart->add(ModelBase::toHttpContent(namePrefix + U("actions"), web::json::value::array(jsonArray), U("application/json")));
        }
    }
    if(m_BuildingIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("building"), m_Building));
    }
    if(m_DescriptionIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("description"), m_Description));
        
    }
    if(m_DisplayNameIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("displayName"), m_DisplayName));
        
    }
    if(m_DurationIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("duration"), m_Duration));
    }
    if(m_EstimatedDurationIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("estimatedDuration"), m_EstimatedDuration));
    }
    if(m_ExecutorIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("executor"), m_Executor));
        
    }
    if(m_FullDisplayNameIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("fullDisplayName"), m_FullDisplayName));
        
    }
    if(m_IdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("id"), m_Id));
        
    }
    if(m_KeepLogIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("keepLog"), m_KeepLog));
    }
    if(m_QueueIdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("queueId"), m_QueueId));
    }
    if(m_ResultIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("result"), m_Result));
        
    }
    if(m_TimestampIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("timestamp"), m_Timestamp));
    }
    if(m_BuiltOnIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("builtOn"), m_BuiltOn));
        
    }
    if(m_ChangeSetIsSet)
    {
        if (m_ChangeSet.get())
        {
            m_ChangeSet->toMultipart(multipart, U("changeSet."));
        }
        
    }
    
}

void HudsonmodelFreeStyleBuild::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix[namePrefix.size() - 1] != U('.'))
    {
        namePrefix += U(".");
    }

    if(multipart->hasContent(U("_class")))
    {
        setClass(ModelBase::stringFromHttpContent(multipart->getContent(U("_class"))));
        
    }
    if(multipart->hasContent(U("number")))
    {
        setNumber(ModelBase::int32_tFromHttpContent(multipart->getContent(U("number"))));
    }
    if(multipart->hasContent(U("url")))
    {
        setUrl(ModelBase::stringFromHttpContent(multipart->getContent(U("url"))));
        
    }
    {
        m_Actions.clear();
        if(multipart->hasContent(U("actions")))
        {

        web::json::value jsonArray = web::json::value::parse(ModelBase::stringFromHttpContent(multipart->getContent(U("actions"))));
        for( auto& item : jsonArray.as_array() )
        {
            
            if(item.is_null())
            {
                m_Actions.push_back( std::shared_ptr<HudsonmodelCauseAction>(nullptr) );
            }
            else
            {
                std::shared_ptr<HudsonmodelCauseAction> newItem(new HudsonmodelCauseAction());
                newItem->fromJson(item);
                m_Actions.push_back( newItem );
            }
            
        }
        }
    }
    if(multipart->hasContent(U("building")))
    {
        setBuilding(ModelBase::boolFromHttpContent(multipart->getContent(U("building"))));
    }
    if(multipart->hasContent(U("description")))
    {
        setDescription(ModelBase::stringFromHttpContent(multipart->getContent(U("description"))));
        
    }
    if(multipart->hasContent(U("displayName")))
    {
        setDisplayName(ModelBase::stringFromHttpContent(multipart->getContent(U("displayName"))));
        
    }
    if(multipart->hasContent(U("duration")))
    {
        setDuration(ModelBase::int32_tFromHttpContent(multipart->getContent(U("duration"))));
    }
    if(multipart->hasContent(U("estimatedDuration")))
    {
        setEstimatedDuration(ModelBase::int32_tFromHttpContent(multipart->getContent(U("estimatedDuration"))));
    }
    if(multipart->hasContent(U("executor")))
    {
        setExecutor(ModelBase::stringFromHttpContent(multipart->getContent(U("executor"))));
        
    }
    if(multipart->hasContent(U("fullDisplayName")))
    {
        setFullDisplayName(ModelBase::stringFromHttpContent(multipart->getContent(U("fullDisplayName"))));
        
    }
    if(multipart->hasContent(U("id")))
    {
        setId(ModelBase::stringFromHttpContent(multipart->getContent(U("id"))));
        
    }
    if(multipart->hasContent(U("keepLog")))
    {
        setKeepLog(ModelBase::boolFromHttpContent(multipart->getContent(U("keepLog"))));
    }
    if(multipart->hasContent(U("queueId")))
    {
        setQueueId(ModelBase::int32_tFromHttpContent(multipart->getContent(U("queueId"))));
    }
    if(multipart->hasContent(U("result")))
    {
        setResult(ModelBase::stringFromHttpContent(multipart->getContent(U("result"))));
        
    }
    if(multipart->hasContent(U("timestamp")))
    {
        setTimestamp(ModelBase::int32_tFromHttpContent(multipart->getContent(U("timestamp"))));
    }
    if(multipart->hasContent(U("builtOn")))
    {
        setBuiltOn(ModelBase::stringFromHttpContent(multipart->getContent(U("builtOn"))));
        
    }
    if(multipart->hasContent(U("changeSet")))
    {
        if(multipart->hasContent(U("changeSet")))
        {
            std::shared_ptr<HudsonscmEmptyChangeLogSet> newItem(new HudsonscmEmptyChangeLogSet());
            newItem->fromMultiPart(multipart, U("changeSet."));
            setChangeSet( newItem );
        }
        
    }
    
}


utility::string_t HudsonmodelFreeStyleBuild::getClass() const
{
    return m__class;
}
void HudsonmodelFreeStyleBuild::setClass(utility::string_t value)
{
    m__class = value;
    m__classIsSet = true;
}
bool HudsonmodelFreeStyleBuild::_classIsSet() const
{
    return m__classIsSet;
}
void HudsonmodelFreeStyleBuild::unset_class()
{
    m__classIsSet = false;
}
int32_t HudsonmodelFreeStyleBuild::getNumber() const
{
    return m_number;
}
void HudsonmodelFreeStyleBuild::setNumber(int32_t value)
{
    m_number = value;
    m_numberIsSet = true;
}
bool HudsonmodelFreeStyleBuild::numberIsSet() const
{
    return m_numberIsSet;
}
void HudsonmodelFreeStyleBuild::unsetnumber()
{
    m_numberIsSet = false;
}
utility::string_t HudsonmodelFreeStyleBuild::getUrl() const
{
    return m_Url;
}
void HudsonmodelFreeStyleBuild::setUrl(utility::string_t value)
{
    m_Url = value;
    m_UrlIsSet = true;
}
bool HudsonmodelFreeStyleBuild::urlIsSet() const
{
    return m_UrlIsSet;
}
void HudsonmodelFreeStyleBuild::unsetUrl()
{
    m_UrlIsSet = false;
}
std::vector<std::shared_ptr<HudsonmodelCauseAction>>& HudsonmodelFreeStyleBuild::getActions()
{
    return m_Actions;
}
bool HudsonmodelFreeStyleBuild::actionsIsSet() const
{
    return m_ActionsIsSet;
}
void HudsonmodelFreeStyleBuild::unsetActions()
{
    m_ActionsIsSet = false;
}
bool HudsonmodelFreeStyleBuild::getBuilding() const
{
    return m_Building;
}
void HudsonmodelFreeStyleBuild::setBuilding(bool value)
{
    m_Building = value;
    m_BuildingIsSet = true;
}
bool HudsonmodelFreeStyleBuild::buildingIsSet() const
{
    return m_BuildingIsSet;
}
void HudsonmodelFreeStyleBuild::unsetBuilding()
{
    m_BuildingIsSet = false;
}
utility::string_t HudsonmodelFreeStyleBuild::getDescription() const
{
    return m_Description;
}
void HudsonmodelFreeStyleBuild::setDescription(utility::string_t value)
{
    m_Description = value;
    m_DescriptionIsSet = true;
}
bool HudsonmodelFreeStyleBuild::descriptionIsSet() const
{
    return m_DescriptionIsSet;
}
void HudsonmodelFreeStyleBuild::unsetDescription()
{
    m_DescriptionIsSet = false;
}
utility::string_t HudsonmodelFreeStyleBuild::getDisplayName() const
{
    return m_DisplayName;
}
void HudsonmodelFreeStyleBuild::setDisplayName(utility::string_t value)
{
    m_DisplayName = value;
    m_DisplayNameIsSet = true;
}
bool HudsonmodelFreeStyleBuild::displayNameIsSet() const
{
    return m_DisplayNameIsSet;
}
void HudsonmodelFreeStyleBuild::unsetDisplayName()
{
    m_DisplayNameIsSet = false;
}
int32_t HudsonmodelFreeStyleBuild::getDuration() const
{
    return m_Duration;
}
void HudsonmodelFreeStyleBuild::setDuration(int32_t value)
{
    m_Duration = value;
    m_DurationIsSet = true;
}
bool HudsonmodelFreeStyleBuild::durationIsSet() const
{
    return m_DurationIsSet;
}
void HudsonmodelFreeStyleBuild::unsetDuration()
{
    m_DurationIsSet = false;
}
int32_t HudsonmodelFreeStyleBuild::getEstimatedDuration() const
{
    return m_EstimatedDuration;
}
void HudsonmodelFreeStyleBuild::setEstimatedDuration(int32_t value)
{
    m_EstimatedDuration = value;
    m_EstimatedDurationIsSet = true;
}
bool HudsonmodelFreeStyleBuild::estimatedDurationIsSet() const
{
    return m_EstimatedDurationIsSet;
}
void HudsonmodelFreeStyleBuild::unsetEstimatedDuration()
{
    m_EstimatedDurationIsSet = false;
}
utility::string_t HudsonmodelFreeStyleBuild::getExecutor() const
{
    return m_Executor;
}
void HudsonmodelFreeStyleBuild::setExecutor(utility::string_t value)
{
    m_Executor = value;
    m_ExecutorIsSet = true;
}
bool HudsonmodelFreeStyleBuild::executorIsSet() const
{
    return m_ExecutorIsSet;
}
void HudsonmodelFreeStyleBuild::unsetExecutor()
{
    m_ExecutorIsSet = false;
}
utility::string_t HudsonmodelFreeStyleBuild::getFullDisplayName() const
{
    return m_FullDisplayName;
}
void HudsonmodelFreeStyleBuild::setFullDisplayName(utility::string_t value)
{
    m_FullDisplayName = value;
    m_FullDisplayNameIsSet = true;
}
bool HudsonmodelFreeStyleBuild::fullDisplayNameIsSet() const
{
    return m_FullDisplayNameIsSet;
}
void HudsonmodelFreeStyleBuild::unsetFullDisplayName()
{
    m_FullDisplayNameIsSet = false;
}
utility::string_t HudsonmodelFreeStyleBuild::getId() const
{
    return m_Id;
}
void HudsonmodelFreeStyleBuild::setId(utility::string_t value)
{
    m_Id = value;
    m_IdIsSet = true;
}
bool HudsonmodelFreeStyleBuild::idIsSet() const
{
    return m_IdIsSet;
}
void HudsonmodelFreeStyleBuild::unsetId()
{
    m_IdIsSet = false;
}
bool HudsonmodelFreeStyleBuild::getKeepLog() const
{
    return m_KeepLog;
}
void HudsonmodelFreeStyleBuild::setKeepLog(bool value)
{
    m_KeepLog = value;
    m_KeepLogIsSet = true;
}
bool HudsonmodelFreeStyleBuild::keepLogIsSet() const
{
    return m_KeepLogIsSet;
}
void HudsonmodelFreeStyleBuild::unsetKeepLog()
{
    m_KeepLogIsSet = false;
}
int32_t HudsonmodelFreeStyleBuild::getQueueId() const
{
    return m_QueueId;
}
void HudsonmodelFreeStyleBuild::setQueueId(int32_t value)
{
    m_QueueId = value;
    m_QueueIdIsSet = true;
}
bool HudsonmodelFreeStyleBuild::queueIdIsSet() const
{
    return m_QueueIdIsSet;
}
void HudsonmodelFreeStyleBuild::unsetQueueId()
{
    m_QueueIdIsSet = false;
}
utility::string_t HudsonmodelFreeStyleBuild::getResult() const
{
    return m_Result;
}
void HudsonmodelFreeStyleBuild::setResult(utility::string_t value)
{
    m_Result = value;
    m_ResultIsSet = true;
}
bool HudsonmodelFreeStyleBuild::resultIsSet() const
{
    return m_ResultIsSet;
}
void HudsonmodelFreeStyleBuild::unsetResult()
{
    m_ResultIsSet = false;
}
int32_t HudsonmodelFreeStyleBuild::getTimestamp() const
{
    return m_Timestamp;
}
void HudsonmodelFreeStyleBuild::setTimestamp(int32_t value)
{
    m_Timestamp = value;
    m_TimestampIsSet = true;
}
bool HudsonmodelFreeStyleBuild::timestampIsSet() const
{
    return m_TimestampIsSet;
}
void HudsonmodelFreeStyleBuild::unsetTimestamp()
{
    m_TimestampIsSet = false;
}
utility::string_t HudsonmodelFreeStyleBuild::getBuiltOn() const
{
    return m_BuiltOn;
}
void HudsonmodelFreeStyleBuild::setBuiltOn(utility::string_t value)
{
    m_BuiltOn = value;
    m_BuiltOnIsSet = true;
}
bool HudsonmodelFreeStyleBuild::builtOnIsSet() const
{
    return m_BuiltOnIsSet;
}
void HudsonmodelFreeStyleBuild::unsetBuiltOn()
{
    m_BuiltOnIsSet = false;
}
std::shared_ptr<HudsonscmEmptyChangeLogSet> HudsonmodelFreeStyleBuild::getChangeSet() const
{
    return m_ChangeSet;
}
void HudsonmodelFreeStyleBuild::setChangeSet(std::shared_ptr<HudsonscmEmptyChangeLogSet> value)
{
    m_ChangeSet = value;
    m_ChangeSetIsSet = true;
}
bool HudsonmodelFreeStyleBuild::changeSetIsSet() const
{
    return m_ChangeSetIsSet;
}
void HudsonmodelFreeStyleBuild::unsetChangeSet()
{
    m_ChangeSetIsSet = false;
}

}
}
}
}
