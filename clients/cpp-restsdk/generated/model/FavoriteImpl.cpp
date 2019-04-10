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



#include "FavoriteImpl.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

FavoriteImpl::FavoriteImpl()
{
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
    m__linksIsSet = false;
    m_ItemIsSet = false;
}

FavoriteImpl::~FavoriteImpl()
{
}

void FavoriteImpl::validate()
{
    // TODO: implement validation
}

web::json::value FavoriteImpl::toJson() const
{
    web::json::value val = web::json::value::object();

    if(m__classIsSet)
    {
        val[utility::conversions::to_string_t("_class")] = ModelBase::toJson(m__class);
    }
    if(m__linksIsSet)
    {
        val[utility::conversions::to_string_t("_links")] = ModelBase::toJson(m__links);
    }
    if(m_ItemIsSet)
    {
        val[utility::conversions::to_string_t("item")] = ModelBase::toJson(m_Item);
    }

    return val;
}

void FavoriteImpl::fromJson(web::json::value& val)
{
    if(val.has_field(utility::conversions::to_string_t("_class")))
    {
        setClass(ModelBase::stringFromJson(val[utility::conversions::to_string_t("_class")]));
    }
    if(val.has_field(utility::conversions::to_string_t("_links")))
    {
        if(!val[utility::conversions::to_string_t("_links")].is_null())
        {
            std::shared_ptr<FavoriteImpllinks> newItem(new FavoriteImpllinks());
            newItem->fromJson(val[utility::conversions::to_string_t("_links")]);
            setLinks( newItem );
        }
    }
    if(val.has_field(utility::conversions::to_string_t("item")))
    {
        if(!val[utility::conversions::to_string_t("item")].is_null())
        {
            std::shared_ptr<PipelineImpl> newItem(new PipelineImpl());
            newItem->fromJson(val[utility::conversions::to_string_t("item")]);
            setItem( newItem );
        }
    }
}

void FavoriteImpl::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m__linksIsSet)
    {
        if (m__links.get())
        {
            m__links->toMultipart(multipart, utility::conversions::to_string_t("_links."));
        }
    }
    if(m_ItemIsSet)
    {
        if (m_Item.get())
        {
            m_Item->toMultipart(multipart, utility::conversions::to_string_t("item."));
        }
    }
}

void FavoriteImpl::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
    if(multipart->hasContent(utility::conversions::to_string_t("_links")))
    {
        if(multipart->hasContent(utility::conversions::to_string_t("_links")))
        {
            std::shared_ptr<FavoriteImpllinks> newItem(new FavoriteImpllinks());
            newItem->fromMultiPart(multipart, utility::conversions::to_string_t("_links."));
            setLinks( newItem );
        }
    }
    if(multipart->hasContent(utility::conversions::to_string_t("item")))
    {
        if(multipart->hasContent(utility::conversions::to_string_t("item")))
        {
            std::shared_ptr<PipelineImpl> newItem(new PipelineImpl());
            newItem->fromMultiPart(multipart, utility::conversions::to_string_t("item."));
            setItem( newItem );
        }
    }
}

utility::string_t FavoriteImpl::getClass() const
{
    return m__class;
}


void FavoriteImpl::setClass(utility::string_t value)
{
    m__class = value;
    m__classIsSet = true;
}
bool FavoriteImpl::_classIsSet() const
{
    return m__classIsSet;
}

void FavoriteImpl::unset_class()
{
    m__classIsSet = false;
}

std::shared_ptr<FavoriteImpllinks> FavoriteImpl::getLinks() const
{
    return m__links;
}


void FavoriteImpl::setLinks(std::shared_ptr<FavoriteImpllinks> value)
{
    m__links = value;
    m__linksIsSet = true;
}
bool FavoriteImpl::linksIsSet() const
{
    return m__linksIsSet;
}

void FavoriteImpl::unset_links()
{
    m__linksIsSet = false;
}

std::shared_ptr<PipelineImpl> FavoriteImpl::getItem() const
{
    return m_Item;
}


void FavoriteImpl::setItem(std::shared_ptr<PipelineImpl> value)
{
    m_Item = value;
    m_ItemIsSet = true;
}
bool FavoriteImpl::itemIsSet() const
{
    return m_ItemIsSet;
}

void FavoriteImpl::unsetItem()
{
    m_ItemIsSet = false;
}

}
}
}
}

