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



#include "AllView.h"

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

AllView::AllView()
{
    m__class = "";
    m_Name = "";
    m_Url = "";
    
}

AllView::~AllView()
{
}

std::string AllView::toJsonString()
{
	std::stringstream ss;
	ptree pt;
	pt.put("_class", m__class);
	pt.put("Name", m_Name);
	pt.put("Url", m_Url);
	write_json(ss, pt, false);
	return ss.str();
}

void AllView::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	m__class = pt.get("_class", "");
	m_Name = pt.get("Name", "");
	m_Url = pt.get("Url", "");
}

std::string AllView::getClass() const
{
    return m__class;
}
void AllView::setClass(std::string value)
{
    m__class = value;
}
std::string AllView::getName() const
{
    return m_Name;
}
void AllView::setName(std::string value)
{
    m_Name = value;
}
std::string AllView::getUrl() const
{
    return m_Url;
}
void AllView::setUrl(std::string value)
{
    m_Url = value;
}

}
}
}
}

