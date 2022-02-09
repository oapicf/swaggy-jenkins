/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.2-pre.0
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#include "ResponseTimeMonitorData.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ResponseTimeMonitorData::ResponseTimeMonitorData()
{
    m__class = "";
    m__classIsSet = false;
    m_Timestamp = 0;
    m_TimestampIsSet = false;
    m_Average = 0;
    m_AverageIsSet = false;
    
}

void ResponseTimeMonitorData::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ResponseTimeMonitorData::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ResponseTimeMonitorData::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ResponseTimeMonitorData" : pathPrefix;

                
    return success;
}

bool ResponseTimeMonitorData::operator==(const ResponseTimeMonitorData& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass())) &&
    
    
    ((!timestampIsSet() && !rhs.timestampIsSet()) || (timestampIsSet() && rhs.timestampIsSet() && getTimestamp() == rhs.getTimestamp())) &&
    
    
    ((!averageIsSet() && !rhs.averageIsSet()) || (averageIsSet() && rhs.averageIsSet() && getAverage() == rhs.getAverage()))
    
    ;
}

bool ResponseTimeMonitorData::operator!=(const ResponseTimeMonitorData& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ResponseTimeMonitorData& o)
{
    j = nlohmann::json();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    if(o.timestampIsSet())
        j["timestamp"] = o.m_Timestamp;
    if(o.averageIsSet())
        j["average"] = o.m_Average;
    
}

void from_json(const nlohmann::json& j, ResponseTimeMonitorData& o)
{
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    if(j.find("timestamp") != j.end())
    {
        j.at("timestamp").get_to(o.m_Timestamp);
        o.m_TimestampIsSet = true;
    } 
    if(j.find("average") != j.end())
    {
        j.at("average").get_to(o.m_Average);
        o.m_AverageIsSet = true;
    } 
    
}

std::string ResponseTimeMonitorData::getClass() const
{
    return m__class;
}
void ResponseTimeMonitorData::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool ResponseTimeMonitorData::r_classIsSet() const
{
    return m__classIsSet;
}
void ResponseTimeMonitorData::unset_class()
{
    m__classIsSet = false;
}
int32_t ResponseTimeMonitorData::getTimestamp() const
{
    return m_Timestamp;
}
void ResponseTimeMonitorData::setTimestamp(int32_t const value)
{
    m_Timestamp = value;
    m_TimestampIsSet = true;
}
bool ResponseTimeMonitorData::timestampIsSet() const
{
    return m_TimestampIsSet;
}
void ResponseTimeMonitorData::unsetTimestamp()
{
    m_TimestampIsSet = false;
}
int32_t ResponseTimeMonitorData::getAverage() const
{
    return m_Average;
}
void ResponseTimeMonitorData::setAverage(int32_t const value)
{
    m_Average = value;
    m_AverageIsSet = true;
}
bool ResponseTimeMonitorData::averageIsSet() const
{
    return m_AverageIsSet;
}
void ResponseTimeMonitorData::unsetAverage()
{
    m_AverageIsSet = false;
}


} // namespace org::openapitools::server::model

