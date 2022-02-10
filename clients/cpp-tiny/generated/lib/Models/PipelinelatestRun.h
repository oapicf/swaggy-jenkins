
/*
 * PipelinelatestRun.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_PipelinelatestRun_H_
#define TINY_CPP_CLIENT_PipelinelatestRun_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "PipelinelatestRunartifacts.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class PipelinelatestRun{
public:

    /*! \brief Constructor.
	 */
    PipelinelatestRun();
    PipelinelatestRun(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~PipelinelatestRun();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	std::list<PipelinelatestRunartifacts> getArtifacts();

	/*! \brief Set 
	 */
	void setArtifacts(std::list <PipelinelatestRunartifacts> artifacts);
	/*! \brief Get 
	 */
	int getDurationInMillis();

	/*! \brief Set 
	 */
	void setDurationInMillis(int  durationInMillis);
	/*! \brief Get 
	 */
	int getEstimatedDurationInMillis();

	/*! \brief Set 
	 */
	void setEstimatedDurationInMillis(int  estimatedDurationInMillis);
	/*! \brief Get 
	 */
	std::string getEnQueueTime();

	/*! \brief Set 
	 */
	void setEnQueueTime(std::string  enQueueTime);
	/*! \brief Get 
	 */
	std::string getEndTime();

	/*! \brief Set 
	 */
	void setEndTime(std::string  endTime);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getOrganization();

	/*! \brief Set 
	 */
	void setOrganization(std::string  organization);
	/*! \brief Get 
	 */
	std::string getPipeline();

	/*! \brief Set 
	 */
	void setPipeline(std::string  pipeline);
	/*! \brief Get 
	 */
	std::string getResult();

	/*! \brief Set 
	 */
	void setResult(std::string  result);
	/*! \brief Get 
	 */
	std::string getRunSummary();

	/*! \brief Set 
	 */
	void setRunSummary(std::string  runSummary);
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
	/*! \brief Get 
	 */
	std::string getType();

	/*! \brief Set 
	 */
	void setType(std::string  type);
	/*! \brief Get 
	 */
	std::string getCommitId();

	/*! \brief Set 
	 */
	void setCommitId(std::string  commitId);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);


    private:
    std::list<PipelinelatestRunartifacts> artifacts;
    int durationInMillis{};
    int estimatedDurationInMillis{};
    std::string enQueueTime{};
    std::string endTime{};
    std::string id{};
    std::string organization{};
    std::string pipeline{};
    std::string result{};
    std::string runSummary{};
    std::string startTime{};
    std::string state{};
    std::string type{};
    std::string commitId{};
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_PipelinelatestRun_H_ */
