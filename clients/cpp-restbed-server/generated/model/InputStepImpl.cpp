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



#include "InputStepImpl.h"

#include <string>
#include <sstream>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>

using boost::property_tree::ptree;
using boost::property_tree::read_json;
using boost::property_tree::write_json;

namespace org {
namespace openapitools {
namespace server {
namespace model {

InputStepImpl::InputStepImpl()
{
    m__class = "";
    m_Id = "";
    m_Message = "";
    m_Ok = "";
    m_Submitter = "";
    
}

InputStepImpl::~InputStepImpl()
{
}

std::string InputStepImpl::toJsonString()
{
	std::stringstream ss;
	ptree pt;
	pt.put("_class", m__class);
	pt.put("Id", m_Id);
	pt.put("Message", m_Message);
	pt.put("Ok", m_Ok);
	pt.put("Submitter", m_Submitter);
	write_json(ss, pt, false);
	return ss.str();
}

void InputStepImpl::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	m__class = pt.get("_class", "");
	m_Id = pt.get("Id", "");
	m_Message = pt.get("Message", "");
	m_Ok = pt.get("Ok", "");
	m_Submitter = pt.get("Submitter", "");
}

std::string InputStepImpl::getClass() const
{
    return m__class;
}
void InputStepImpl::setClass(std::string value)
{
    m__class = value;
}
std::shared_ptr<InputStepImpllinks> InputStepImpl::getLinks() const
{
    return m__links;
}
void InputStepImpl::setLinks(std::shared_ptr<InputStepImpllinks> value)
{
    m__links = value;
}
std::string InputStepImpl::getId() const
{
    return m_Id;
}
void InputStepImpl::setId(std::string value)
{
    m_Id = value;
}
std::string InputStepImpl::getMessage() const
{
    return m_Message;
}
void InputStepImpl::setMessage(std::string value)
{
    m_Message = value;
}
std::string InputStepImpl::getOk() const
{
    return m_Ok;
}
void InputStepImpl::setOk(std::string value)
{
    m_Ok = value;
}
std::vector<std::shared_ptr<StringParameterDefinition>> InputStepImpl::getParameters() const
{
    return m_Parameters;
}
void InputStepImpl::setParameters(std::vector<std::shared_ptr<StringParameterDefinition>> value)
{
    m_Parameters = value;
}
std::string InputStepImpl::getSubmitter() const
{
    return m_Submitter;
}
void InputStepImpl::setSubmitter(std::string value)
{
    m_Submitter = value;
}

}
}
}
}

