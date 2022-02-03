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



#include "DiskSpaceMonitorDescriptorDiskSpace.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




DiskSpaceMonitorDescriptorDiskSpace::DiskSpaceMonitorDescriptorDiskSpace()
{
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
    m_Timestamp = 0;
    m_TimestampIsSet = false;
    m_Path = utility::conversions::to_string_t("");
    m_PathIsSet = false;
    m_Size = 0;
    m_SizeIsSet = false;
}

DiskSpaceMonitorDescriptorDiskSpace::~DiskSpaceMonitorDescriptorDiskSpace()
{
}

void DiskSpaceMonitorDescriptorDiskSpace::validate()
{
    // TODO: implement validation
}

web::json::value DiskSpaceMonitorDescriptorDiskSpace::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m__classIsSet)
    {
        val[utility::conversions::to_string_t(U("_class"))] = ModelBase::toJson(m__class);
    }
    if(m_TimestampIsSet)
    {
        val[utility::conversions::to_string_t(U("timestamp"))] = ModelBase::toJson(m_Timestamp);
    }
    if(m_PathIsSet)
    {
        val[utility::conversions::to_string_t(U("path"))] = ModelBase::toJson(m_Path);
    }
    if(m_SizeIsSet)
    {
        val[utility::conversions::to_string_t(U("size"))] = ModelBase::toJson(m_Size);
    }

    return val;
}

bool DiskSpaceMonitorDescriptorDiskSpace::fromJson(const web::json::value& val)
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
    if(val.has_field(utility::conversions::to_string_t(U("timestamp"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("timestamp")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_timestamp;
            ok &= ModelBase::fromJson(fieldValue, refVal_timestamp);
            setTimestamp(refVal_timestamp);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("path"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("path")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_path;
            ok &= ModelBase::fromJson(fieldValue, refVal_path);
            setPath(refVal_path);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("size"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("size")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_size;
            ok &= ModelBase::fromJson(fieldValue, refVal_size);
            setSize(refVal_size);
        }
    }
    return ok;
}

void DiskSpaceMonitorDescriptorDiskSpace::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m_TimestampIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("timestamp")), m_Timestamp));
    }
    if(m_PathIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("path")), m_Path));
    }
    if(m_SizeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("size")), m_Size));
    }
}

bool DiskSpaceMonitorDescriptorDiskSpace::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("timestamp"))))
    {
        int32_t refVal_timestamp;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("timestamp"))), refVal_timestamp );
        setTimestamp(refVal_timestamp);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("path"))))
    {
        utility::string_t refVal_path;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("path"))), refVal_path );
        setPath(refVal_path);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("size"))))
    {
        int32_t refVal_size;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("size"))), refVal_size );
        setSize(refVal_size);
    }
    return ok;
}

utility::string_t DiskSpaceMonitorDescriptorDiskSpace::getClass() const
{
    return m__class;
}

void DiskSpaceMonitorDescriptorDiskSpace::setClass(const utility::string_t& value)
{
    m__class = value;
    m__classIsSet = true;
}

bool DiskSpaceMonitorDescriptorDiskSpace::r_classIsSet() const
{
    return m__classIsSet;
}

void DiskSpaceMonitorDescriptorDiskSpace::unset_class()
{
    m__classIsSet = false;
}
int32_t DiskSpaceMonitorDescriptorDiskSpace::getTimestamp() const
{
    return m_Timestamp;
}

void DiskSpaceMonitorDescriptorDiskSpace::setTimestamp(int32_t value)
{
    m_Timestamp = value;
    m_TimestampIsSet = true;
}

bool DiskSpaceMonitorDescriptorDiskSpace::timestampIsSet() const
{
    return m_TimestampIsSet;
}

void DiskSpaceMonitorDescriptorDiskSpace::unsetTimestamp()
{
    m_TimestampIsSet = false;
}
utility::string_t DiskSpaceMonitorDescriptorDiskSpace::getPath() const
{
    return m_Path;
}

void DiskSpaceMonitorDescriptorDiskSpace::setPath(const utility::string_t& value)
{
    m_Path = value;
    m_PathIsSet = true;
}

bool DiskSpaceMonitorDescriptorDiskSpace::pathIsSet() const
{
    return m_PathIsSet;
}

void DiskSpaceMonitorDescriptorDiskSpace::unsetPath()
{
    m_PathIsSet = false;
}
int32_t DiskSpaceMonitorDescriptorDiskSpace::getSize() const
{
    return m_Size;
}

void DiskSpaceMonitorDescriptorDiskSpace::setSize(int32_t value)
{
    m_Size = value;
    m_SizeIsSet = true;
}

bool DiskSpaceMonitorDescriptorDiskSpace::sizeIsSet() const
{
    return m_SizeIsSet;
}

void DiskSpaceMonitorDescriptorDiskSpace::unsetSize()
{
    m_SizeIsSet = false;
}
}
}
}
}


