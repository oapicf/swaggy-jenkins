
/*
 * Pipeline.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Pipeline_H_
#define TINY_CPP_CLIENT_Pipeline_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "PipelinelatestRun.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Pipeline{
public:

    /*! \brief Constructor.
	 */
    Pipeline();
    Pipeline(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Pipeline();


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
	std::string getOrganization();

	/*! \brief Set 
	 */
	void setOrganization(std::string  organization);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getDisplayName();

	/*! \brief Set 
	 */
	void setDisplayName(std::string  displayName);
	/*! \brief Get 
	 */
	std::string getFullName();

	/*! \brief Set 
	 */
	void setFullName(std::string  fullName);
	/*! \brief Get 
	 */
	int getWeatherScore();

	/*! \brief Set 
	 */
	void setWeatherScore(int  weatherScore);
	/*! \brief Get 
	 */
	int getEstimatedDurationInMillis();

	/*! \brief Set 
	 */
	void setEstimatedDurationInMillis(int  estimatedDurationInMillis);
	/*! \brief Get 
	 */
	PipelinelatestRun getLatestRun();

	/*! \brief Set 
	 */
	void setLatestRun(PipelinelatestRun  latestRun);


    private:
    std::string _class{};
    std::string organization{};
    std::string name{};
    std::string displayName{};
    std::string fullName{};
    int weatherScore{};
    int estimatedDurationInMillis{};
    PipelinelatestRun latestRun;
};
}

#endif /* TINY_CPP_CLIENT_Pipeline_H_ */
