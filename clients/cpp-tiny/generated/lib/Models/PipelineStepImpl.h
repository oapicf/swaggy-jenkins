
/*
 * PipelineStepImpl.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_PipelineStepImpl_H_
#define TINY_CPP_CLIENT_PipelineStepImpl_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "InputStepImpl.h"
#include "PipelineStepImpllinks.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class PipelineStepImpl{
public:

    /*! \brief Constructor.
	 */
    PipelineStepImpl();
    PipelineStepImpl(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~PipelineStepImpl();


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
	PipelineStepImpllinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(PipelineStepImpllinks  _links);
	/*! \brief Get 
	 */
	std::string getDisplayName();

	/*! \brief Set 
	 */
	void setDisplayName(std::string  displayName);
	/*! \brief Get 
	 */
	int getDurationInMillis();

	/*! \brief Set 
	 */
	void setDurationInMillis(int  durationInMillis);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	InputStepImpl getInput();

	/*! \brief Set 
	 */
	void setInput(InputStepImpl  input);
	/*! \brief Get 
	 */
	std::string getResult();

	/*! \brief Set 
	 */
	void setResult(std::string  result);
	/*! \brief Get 
	 */
	std::string getStartTime();

	/*! \brief Set 
	 */
	void setStartTime(std::string  startTime);
	/*! \brief Get 
	 */
	std::string getState();

	/*! \brief Set 
	 */
	void setState(std::string  state);


    private:
    std::string _class{};
    PipelineStepImpllinks _links;
    std::string displayName{};
    int durationInMillis{};
    std::string id{};
    InputStepImpl input;
    std::string result{};
    std::string startTime{};
    std::string state{};
};
}

#endif /* TINY_CPP_CLIENT_PipelineStepImpl_H_ */
