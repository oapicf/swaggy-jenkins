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
/*
 * BranchImplpermissions.h
 *
 * 
 */

#ifndef BranchImplpermissions_H_
#define BranchImplpermissions_H_


#include <string>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  BranchImplpermissions
{
public:
    BranchImplpermissions();
    virtual ~BranchImplpermissions() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    /// <summary>
    /// Helper overload for validate. Used when one model stores another model and calls it's validate.
    /// Not meant to be called outside that case.
    /// </summary>
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;

    bool operator==(const BranchImplpermissions& rhs) const;
    bool operator!=(const BranchImplpermissions& rhs) const;

    /////////////////////////////////////////////
    /// BranchImplpermissions members

    /// <summary>
    /// 
    /// </summary>
    bool isCreate() const;
    void setCreate(bool const value);
    bool createIsSet() const;
    void unsetCreate();
    /// <summary>
    /// 
    /// </summary>
    bool isRead() const;
    void setRead(bool const value);
    bool readIsSet() const;
    void unsetRead();
    /// <summary>
    /// 
    /// </summary>
    bool isStart() const;
    void setStart(bool const value);
    bool startIsSet() const;
    void unsetStart();
    /// <summary>
    /// 
    /// </summary>
    bool isStop() const;
    void setStop(bool const value);
    bool stopIsSet() const;
    void unsetStop();
    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool r_classIsSet() const;
    void unset_class();

    friend  void to_json(nlohmann::json& j, const BranchImplpermissions& o);
    friend  void from_json(const nlohmann::json& j, BranchImplpermissions& o);
protected:
    bool m_Create;
    bool m_CreateIsSet;
    bool m_Read;
    bool m_ReadIsSet;
    bool m_Start;
    bool m_StartIsSet;
    bool m_Stop;
    bool m_StopIsSet;
    std::string m__class;
    bool m__classIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* BranchImplpermissions_H_ */
