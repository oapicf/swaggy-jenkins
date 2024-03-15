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

/*
 * ClassesByClass.h
 *
 * 
 */

#ifndef ClassesByClass_H_
#define ClassesByClass_H_



#include <string>
#include <vector>
#include <memory>
#include <vector>
#include <boost/property_tree/ptree.hpp>
#include "helpers.h"

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  ClassesByClass 
{
public:
    ClassesByClass() = default;
    explicit ClassesByClass(boost::property_tree::ptree const& pt);
    virtual ~ClassesByClass() = default;

    ClassesByClass(const ClassesByClass& other) = default; // copy constructor
    ClassesByClass(ClassesByClass&& other) noexcept = default; // move constructor

    ClassesByClass& operator=(const ClassesByClass& other) = default; // copy assignment
    ClassesByClass& operator=(ClassesByClass&& other) noexcept = default; // move assignment

    std::string toJsonString(bool prettyJson = false) const;
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree() const;
    void fromPropertyTree(boost::property_tree::ptree const& pt);


    /////////////////////////////////////////////
    /// ClassesByClass members

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::string> getClasses() const;
    void setClasses(std::vector<std::string> value);

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

protected:
    std::vector<std::string> m_Classes;
    std::string m__class = "";
};

std::vector<ClassesByClass> createClassesByClassVectorFromJsonString(const std::string& json);

template<>
inline boost::property_tree::ptree toPt<ClassesByClass>(const ClassesByClass& val) {
    return val.toPropertyTree();
}

template<>
inline ClassesByClass fromPt<ClassesByClass>(const boost::property_tree::ptree& pt) {
    ClassesByClass ret;
    ret.fromPropertyTree(pt);
    return ret;
}

}
}
}
}

#endif /* ClassesByClass_H_ */
