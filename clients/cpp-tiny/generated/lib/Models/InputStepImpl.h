
/*
 * InputStepImpl.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_InputStepImpl_H_
#define TINY_CPP_CLIENT_InputStepImpl_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "InputStepImpllinks.h"
#include "StringParameterDefinition.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class InputStepImpl{
public:

    /*! \brief Constructor.
	 */
    InputStepImpl();
    InputStepImpl(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~InputStepImpl();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);
	/*! \brief Get 
	 */
	InputStepImpllinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(InputStepImpllinks  _links);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getMessage();

	/*! \brief Set 
	 */
	void setMessage(std::string  message);
	/*! \brief Get 
	 */
	std::string getOk();

	/*! \brief Set 
	 */
	void setOk(std::string  ok);
	/*! \brief Get 
	 */
	std::list<StringParameterDefinition> getParameters();

	/*! \brief Set 
	 */
	void setParameters(std::list <StringParameterDefinition> parameters);
	/*! \brief Get 
	 */
	std::string getSubmitter();

	/*! \brief Set 
	 */
	void setSubmitter(std::string  submitter);


    private:
    std::string _class{};
    InputStepImpllinks _links;
    std::string id{};
    std::string message{};
    std::string ok{};
    std::list<StringParameterDefinition> parameters;
    std::string submitter{};
};
}

#endif /* TINY_CPP_CLIENT_InputStepImpl_H_ */
