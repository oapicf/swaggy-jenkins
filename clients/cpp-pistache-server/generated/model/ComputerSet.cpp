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


#include "ComputerSet.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ComputerSet::ComputerSet()
{
    m__class = "";
    m__classIsSet = false;
    m_BusyExecutors = 0;
    m_BusyExecutorsIsSet = false;
    m_ComputerIsSet = false;
    m_DisplayName = "";
    m_DisplayNameIsSet = false;
    m_TotalExecutors = 0;
    m_TotalExecutorsIsSet = false;
    
}

void ComputerSet::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ComputerSet::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ComputerSet::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ComputerSet" : pathPrefix;

                 
    if (computerIsSet())
    {
        const std::vector<org::openapitools::server::model::HudsonMasterComputer>& value = m_Computer;
        const std::string currentValuePath = _pathPrefix + ".computer";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const org::openapitools::server::model::HudsonMasterComputer& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath + ".computer") && success;
 
                i++;
            }
        }

    }
            
    return success;
}

bool ComputerSet::operator==(const ComputerSet& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass())) &&
    
    
    ((!busyExecutorsIsSet() && !rhs.busyExecutorsIsSet()) || (busyExecutorsIsSet() && rhs.busyExecutorsIsSet() && getBusyExecutors() == rhs.getBusyExecutors())) &&
    
    
    ((!computerIsSet() && !rhs.computerIsSet()) || (computerIsSet() && rhs.computerIsSet() && getComputer() == rhs.getComputer())) &&
    
    
    ((!displayNameIsSet() && !rhs.displayNameIsSet()) || (displayNameIsSet() && rhs.displayNameIsSet() && getDisplayName() == rhs.getDisplayName())) &&
    
    
    ((!totalExecutorsIsSet() && !rhs.totalExecutorsIsSet()) || (totalExecutorsIsSet() && rhs.totalExecutorsIsSet() && getTotalExecutors() == rhs.getTotalExecutors()))
    
    ;
}

bool ComputerSet::operator!=(const ComputerSet& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ComputerSet& o)
{
    j = nlohmann::json::object();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    if(o.busyExecutorsIsSet())
        j["busyExecutors"] = o.m_BusyExecutors;
    if(o.computerIsSet() || !o.m_Computer.empty())
        j["computer"] = o.m_Computer;
    if(o.displayNameIsSet())
        j["displayName"] = o.m_DisplayName;
    if(o.totalExecutorsIsSet())
        j["totalExecutors"] = o.m_TotalExecutors;
    
}

void from_json(const nlohmann::json& j, ComputerSet& o)
{
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    if(j.find("busyExecutors") != j.end())
    {
        j.at("busyExecutors").get_to(o.m_BusyExecutors);
        o.m_BusyExecutorsIsSet = true;
    } 
    if(j.find("computer") != j.end())
    {
        j.at("computer").get_to(o.m_Computer);
        o.m_ComputerIsSet = true;
    } 
    if(j.find("displayName") != j.end())
    {
        j.at("displayName").get_to(o.m_DisplayName);
        o.m_DisplayNameIsSet = true;
    } 
    if(j.find("totalExecutors") != j.end())
    {
        j.at("totalExecutors").get_to(o.m_TotalExecutors);
        o.m_TotalExecutorsIsSet = true;
    } 
    
}

std::string ComputerSet::getClass() const
{
    return m__class;
}
void ComputerSet::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool ComputerSet::r_classIsSet() const
{
    return m__classIsSet;
}
void ComputerSet::unset_class()
{
    m__classIsSet = false;
}
int32_t ComputerSet::getBusyExecutors() const
{
    return m_BusyExecutors;
}
void ComputerSet::setBusyExecutors(int32_t const value)
{
    m_BusyExecutors = value;
    m_BusyExecutorsIsSet = true;
}
bool ComputerSet::busyExecutorsIsSet() const
{
    return m_BusyExecutorsIsSet;
}
void ComputerSet::unsetBusyExecutors()
{
    m_BusyExecutorsIsSet = false;
}
std::vector<org::openapitools::server::model::HudsonMasterComputer> ComputerSet::getComputer() const
{
    return m_Computer;
}
void ComputerSet::setComputer(std::vector<org::openapitools::server::model::HudsonMasterComputer> const& value)
{
    m_Computer = value;
    m_ComputerIsSet = true;
}
bool ComputerSet::computerIsSet() const
{
    return m_ComputerIsSet;
}
void ComputerSet::unsetComputer()
{
    m_ComputerIsSet = false;
}
std::string ComputerSet::getDisplayName() const
{
    return m_DisplayName;
}
void ComputerSet::setDisplayName(std::string const& value)
{
    m_DisplayName = value;
    m_DisplayNameIsSet = true;
}
bool ComputerSet::displayNameIsSet() const
{
    return m_DisplayNameIsSet;
}
void ComputerSet::unsetDisplayName()
{
    m_DisplayNameIsSet = false;
}
int32_t ComputerSet::getTotalExecutors() const
{
    return m_TotalExecutors;
}
void ComputerSet::setTotalExecutors(int32_t const value)
{
    m_TotalExecutors = value;
    m_TotalExecutorsIsSet = true;
}
bool ComputerSet::totalExecutorsIsSet() const
{
    return m_TotalExecutorsIsSet;
}
void ComputerSet::unsetTotalExecutors()
{
    m_TotalExecutorsIsSet = false;
}


} // namespace org::openapitools::server::model

