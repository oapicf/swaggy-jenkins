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



#include "CppRestOpenAPIClient/model/GithubContent.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



GithubContent::GithubContent()
{
    m_Name = utility::conversions::to_string_t("");
    m_NameIsSet = false;
    m_Sha = utility::conversions::to_string_t("");
    m_ShaIsSet = false;
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
    m_Repo = utility::conversions::to_string_t("");
    m_RepoIsSet = false;
    m_Size = 0;
    m_SizeIsSet = false;
    m_Owner = utility::conversions::to_string_t("");
    m_OwnerIsSet = false;
    m_Path = utility::conversions::to_string_t("");
    m_PathIsSet = false;
    m_Base64Data = utility::conversions::to_string_t("");
    m_Base64DataIsSet = false;
}

GithubContent::~GithubContent()
{
}

void GithubContent::validate()
{
    // TODO: implement validation
}

web::json::value GithubContent::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_NameIsSet)
    {
        val[utility::conversions::to_string_t(U("name"))] = ModelBase::toJson(m_Name);
    }
    if(m_ShaIsSet)
    {
        val[utility::conversions::to_string_t(U("sha"))] = ModelBase::toJson(m_Sha);
    }
    if(m__classIsSet)
    {
        val[utility::conversions::to_string_t(U("_class"))] = ModelBase::toJson(m__class);
    }
    if(m_RepoIsSet)
    {
        val[utility::conversions::to_string_t(U("repo"))] = ModelBase::toJson(m_Repo);
    }
    if(m_SizeIsSet)
    {
        val[utility::conversions::to_string_t(U("size"))] = ModelBase::toJson(m_Size);
    }
    if(m_OwnerIsSet)
    {
        val[utility::conversions::to_string_t(U("owner"))] = ModelBase::toJson(m_Owner);
    }
    if(m_PathIsSet)
    {
        val[utility::conversions::to_string_t(U("path"))] = ModelBase::toJson(m_Path);
    }
    if(m_Base64DataIsSet)
    {
        val[utility::conversions::to_string_t(U("base64Data"))] = ModelBase::toJson(m_Base64Data);
    }

    return val;
}

bool GithubContent::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("name"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("name")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setName;
            ok &= ModelBase::fromJson(fieldValue, refVal_setName);
            setName(refVal_setName);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("sha"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("sha")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setSha;
            ok &= ModelBase::fromJson(fieldValue, refVal_setSha);
            setSha(refVal_setSha);
        }
    }
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
    if(val.has_field(utility::conversions::to_string_t(U("repo"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("repo")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setRepo;
            ok &= ModelBase::fromJson(fieldValue, refVal_setRepo);
            setRepo(refVal_setRepo);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("size"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("size")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_setSize;
            ok &= ModelBase::fromJson(fieldValue, refVal_setSize);
            setSize(refVal_setSize);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("owner"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("owner")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setOwner;
            ok &= ModelBase::fromJson(fieldValue, refVal_setOwner);
            setOwner(refVal_setOwner);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("path"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("path")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setPath;
            ok &= ModelBase::fromJson(fieldValue, refVal_setPath);
            setPath(refVal_setPath);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("base64Data"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("base64Data")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setBase64Data;
            ok &= ModelBase::fromJson(fieldValue, refVal_setBase64Data);
            setBase64Data(refVal_setBase64Data);
        }
    }
    return ok;
}

void GithubContent::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_NameIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("name")), m_Name));
    }
    if(m_ShaIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("sha")), m_Sha));
    }
    if(m__classIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("_class")), m__class));
    }
    if(m_RepoIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("repo")), m_Repo));
    }
    if(m_SizeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("size")), m_Size));
    }
    if(m_OwnerIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("owner")), m_Owner));
    }
    if(m_PathIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("path")), m_Path));
    }
    if(m_Base64DataIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("base64Data")), m_Base64Data));
    }
}

bool GithubContent::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("name"))))
    {
        utility::string_t refVal_setName;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("name"))), refVal_setName );
        setName(refVal_setName);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("sha"))))
    {
        utility::string_t refVal_setSha;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("sha"))), refVal_setSha );
        setSha(refVal_setSha);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("_class"))))
    {
        utility::string_t refVal_setClass;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("_class"))), refVal_setClass );
        setClass(refVal_setClass);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("repo"))))
    {
        utility::string_t refVal_setRepo;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("repo"))), refVal_setRepo );
        setRepo(refVal_setRepo);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("size"))))
    {
        int32_t refVal_setSize;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("size"))), refVal_setSize );
        setSize(refVal_setSize);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("owner"))))
    {
        utility::string_t refVal_setOwner;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("owner"))), refVal_setOwner );
        setOwner(refVal_setOwner);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("path"))))
    {
        utility::string_t refVal_setPath;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("path"))), refVal_setPath );
        setPath(refVal_setPath);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("base64Data"))))
    {
        utility::string_t refVal_setBase64Data;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("base64Data"))), refVal_setBase64Data );
        setBase64Data(refVal_setBase64Data);
    }
    return ok;
}

utility::string_t GithubContent::getName() const
{
    return m_Name;
}

void GithubContent::setName(const utility::string_t& value)
{
    m_Name = value;
    m_NameIsSet = true;
}

bool GithubContent::nameIsSet() const
{
    return m_NameIsSet;
}

void GithubContent::unsetName()
{
    m_NameIsSet = false;
}
utility::string_t GithubContent::getSha() const
{
    return m_Sha;
}

void GithubContent::setSha(const utility::string_t& value)
{
    m_Sha = value;
    m_ShaIsSet = true;
}

bool GithubContent::shaIsSet() const
{
    return m_ShaIsSet;
}

void GithubContent::unsetSha()
{
    m_ShaIsSet = false;
}
utility::string_t GithubContent::getClass() const
{
    return m__class;
}

void GithubContent::setClass(const utility::string_t& value)
{
    m__class = value;
    m__classIsSet = true;
}

bool GithubContent::r_classIsSet() const
{
    return m__classIsSet;
}

void GithubContent::unset_class()
{
    m__classIsSet = false;
}
utility::string_t GithubContent::getRepo() const
{
    return m_Repo;
}

void GithubContent::setRepo(const utility::string_t& value)
{
    m_Repo = value;
    m_RepoIsSet = true;
}

bool GithubContent::repoIsSet() const
{
    return m_RepoIsSet;
}

void GithubContent::unsetRepo()
{
    m_RepoIsSet = false;
}
int32_t GithubContent::getSize() const
{
    return m_Size;
}

void GithubContent::setSize(int32_t value)
{
    m_Size = value;
    m_SizeIsSet = true;
}

bool GithubContent::sizeIsSet() const
{
    return m_SizeIsSet;
}

void GithubContent::unsetSize()
{
    m_SizeIsSet = false;
}
utility::string_t GithubContent::getOwner() const
{
    return m_Owner;
}

void GithubContent::setOwner(const utility::string_t& value)
{
    m_Owner = value;
    m_OwnerIsSet = true;
}

bool GithubContent::ownerIsSet() const
{
    return m_OwnerIsSet;
}

void GithubContent::unsetOwner()
{
    m_OwnerIsSet = false;
}
utility::string_t GithubContent::getPath() const
{
    return m_Path;
}

void GithubContent::setPath(const utility::string_t& value)
{
    m_Path = value;
    m_PathIsSet = true;
}

bool GithubContent::pathIsSet() const
{
    return m_PathIsSet;
}

void GithubContent::unsetPath()
{
    m_PathIsSet = false;
}
utility::string_t GithubContent::getBase64Data() const
{
    return m_Base64Data;
}

void GithubContent::setBase64Data(const utility::string_t& value)
{
    m_Base64Data = value;
    m_Base64DataIsSet = true;
}

bool GithubContent::base64DataIsSet() const
{
    return m_Base64DataIsSet;
}

void GithubContent::unsetBase64Data()
{
    m_Base64DataIsSet = false;
}
}
}
}
}


