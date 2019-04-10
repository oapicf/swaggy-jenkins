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


#include "BranchImplpermissions.h"

namespace org {
namespace openapitools {
namespace server {
namespace model {

BranchImplpermissions::BranchImplpermissions()
{
    m_Create = false;
    m_CreateIsSet = false;
    m_Read = false;
    m_ReadIsSet = false;
    m_Start = false;
    m_StartIsSet = false;
    m_Stop = false;
    m_StopIsSet = false;
    m__class = "";
    m__classIsSet = false;
    
}

BranchImplpermissions::~BranchImplpermissions()
{
}

void BranchImplpermissions::validate()
{
    // TODO: implement validation
}

nlohmann::json BranchImplpermissions::toJson() const
{
    nlohmann::json val = nlohmann::json::object();

    if(m_CreateIsSet)
    {
        val["create"] = m_Create;
    }
    if(m_ReadIsSet)
    {
        val["read"] = m_Read;
    }
    if(m_StartIsSet)
    {
        val["start"] = m_Start;
    }
    if(m_StopIsSet)
    {
        val["stop"] = m_Stop;
    }
    if(m__classIsSet)
    {
        val["_class"] = ModelBase::toJson(m__class);
    }
    

    return val;
}

void BranchImplpermissions::fromJson(nlohmann::json& val)
{
    if(val.find("create") != val.end())
    {
        setCreate(val.at("create"));
    }
    if(val.find("read") != val.end())
    {
        setRead(val.at("read"));
    }
    if(val.find("start") != val.end())
    {
        setStart(val.at("start"));
    }
    if(val.find("stop") != val.end())
    {
        setStop(val.at("stop"));
    }
    if(val.find("_class") != val.end())
    {
        setClass(val.at("_class"));
    }
    
}


bool BranchImplpermissions::isCreate() const
{
    return m_Create;
}
void BranchImplpermissions::setCreate(bool const value)
{
    m_Create = value;
    m_CreateIsSet = true;
}
bool BranchImplpermissions::createIsSet() const
{
    return m_CreateIsSet;
}
void BranchImplpermissions::unsetCreate()
{
    m_CreateIsSet = false;
}
bool BranchImplpermissions::isRead() const
{
    return m_Read;
}
void BranchImplpermissions::setRead(bool const value)
{
    m_Read = value;
    m_ReadIsSet = true;
}
bool BranchImplpermissions::readIsSet() const
{
    return m_ReadIsSet;
}
void BranchImplpermissions::unsetRead()
{
    m_ReadIsSet = false;
}
bool BranchImplpermissions::isStart() const
{
    return m_Start;
}
void BranchImplpermissions::setStart(bool const value)
{
    m_Start = value;
    m_StartIsSet = true;
}
bool BranchImplpermissions::startIsSet() const
{
    return m_StartIsSet;
}
void BranchImplpermissions::unsetStart()
{
    m_StartIsSet = false;
}
bool BranchImplpermissions::isStop() const
{
    return m_Stop;
}
void BranchImplpermissions::setStop(bool const value)
{
    m_Stop = value;
    m_StopIsSet = true;
}
bool BranchImplpermissions::stopIsSet() const
{
    return m_StopIsSet;
}
void BranchImplpermissions::unsetStop()
{
    m_StopIsSet = false;
}
std::string BranchImplpermissions::getClass() const
{
    return m__class;
}
void BranchImplpermissions::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool BranchImplpermissions::classIsSet() const
{
    return m__classIsSet;
}
void BranchImplpermissions::unset_class()
{
    m__classIsSet = false;
}

}
}
}
}

