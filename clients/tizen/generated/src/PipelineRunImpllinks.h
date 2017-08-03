/*
 * PipelineRunImpllinks.h
 *
 * 
 */

#ifndef _PipelineRunImpllinks_H_
#define _PipelineRunImpllinks_H_


#include <string>
#include "Link.h"
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

class PipelineRunImpllinks : public Object {
public:
	/*! \brief Constructor.
	 */
	PipelineRunImpllinks();
	PipelineRunImpllinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PipelineRunImpllinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	Link getNodes();

	/*! \brief Set 
	 */
	void setNodes(Link  nodes);
	/*! \brief Get 
	 */
	Link getLog();

	/*! \brief Set 
	 */
	void setLog(Link  log);
	/*! \brief Get 
	 */
	Link getSelf();

	/*! \brief Set 
	 */
	void setSelf(Link  self);
	/*! \brief Get 
	 */
	Link getActions();

	/*! \brief Set 
	 */
	void setActions(Link  actions);
	/*! \brief Get 
	 */
	Link getSteps();

	/*! \brief Set 
	 */
	void setSteps(Link  steps);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);

private:
	Link nodes;
	Link log;
	Link self;
	Link actions;
	Link steps;
	std::string _class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PipelineRunImpllinks_H_ */
