
/*
 * PipelineImpl.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_PipelineImpl_H_
#define TINY_CPP_CLIENT_PipelineImpl_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "PipelineImpllinks.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class PipelineImpl{
public:

    /*! \brief Constructor.
	 */
    PipelineImpl();
    PipelineImpl(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~PipelineImpl();


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
	std::string getDisplayName();

	/*! \brief Set 
	 */
	void setDisplayName(std::string  displayName);
	/*! \brief Get 
	 */
	int getEstimatedDurationInMillis();

	/*! \brief Set 
	 */
	void setEstimatedDurationInMillis(int  estimatedDurationInMillis);
	/*! \brief Get 
	 */
	std::string getFullName();

	/*! \brief Set 
	 */
	void setFullName(std::string  fullName);
	/*! \brief Get 
	 */
	std::string getLatestRun();

	/*! \brief Set 
	 */
	void setLatestRun(std::string  latestRun);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getOrganization();

	/*! \brief Set 
	 */
	void setOrganization(std::string  organization);
	/*! \brief Get 
	 */
	int getWeatherScore();

	/*! \brief Set 
	 */
	void setWeatherScore(int  weatherScore);
	/*! \brief Get 
	 */
	PipelineImpllinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(PipelineImpllinks  _links);


    private:
    std::string _class{};
    std::string displayName{};
    int estimatedDurationInMillis{};
    std::string fullName{};
    std::string latestRun{};
    std::string name{};
    std::string organization{};
    int weatherScore{};
    PipelineImpllinks _links;
};
}

#endif /* TINY_CPP_CLIENT_PipelineImpl_H_ */
