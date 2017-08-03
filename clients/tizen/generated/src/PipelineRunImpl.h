/*
 * PipelineRunImpl.h
 *
 * 
 */

#ifndef _PipelineRunImpl_H_
#define _PipelineRunImpl_H_


#include <string>
#include "PipelineRunImpllinks.h"
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class PipelineRunImpl : public Object {
public:
	/*! \brief Constructor.
	 */
	PipelineRunImpl();
	PipelineRunImpl(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PipelineRunImpl();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);
	/*! \brief Get 
	 */
	PipelineRunImpllinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(PipelineRunImpllinks  _links);
	/*! \brief Get 
	 */
	int getDurationInMillis();

	/*! \brief Set 
	 */
	void setDurationInMillis(int  durationInMillis);
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
	int getEstimatedDurationInMillis();

	/*! \brief Set 
	 */
	void setEstimatedDurationInMillis(int  estimatedDurationInMillis);
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

private:
	std::string _class;
	PipelineRunImpllinks _links;
	int durationInMillis;
	std::string enQueueTime;
	std::string endTime;
	int estimatedDurationInMillis;
	std::string id;
	std::string organization;
	std::string pipeline;
	std::string result;
	std::string runSummary;
	std::string startTime;
	std::string state;
	std::string type;
	std::string commitId;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PipelineRunImpl_H_ */
