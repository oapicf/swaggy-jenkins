/*
 * PipelineRunNode.h
 *
 * 
 */

#ifndef _PipelineRunNode_H_
#define _PipelineRunNode_H_


#include <string>
#include "PipelineRunNodeedges.h"
#include <list>
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

class PipelineRunNode : public Object {
public:
	/*! \brief Constructor.
	 */
	PipelineRunNode();
	PipelineRunNode(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PipelineRunNode();

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
	std::list<PipelineRunNodeedges> getEdges();

	/*! \brief Set 
	 */
	void setEdges(std::list <PipelineRunNodeedges> edges);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
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
	std::string _class;
	std::string displayName;
	int durationInMillis;
	std::list <PipelineRunNodeedges>edges;
	std::string id;
	std::string result;
	std::string startTime;
	std::string state;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PipelineRunNode_H_ */
