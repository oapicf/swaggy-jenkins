/*
 * PipelineImpllinks.h
 *
 * 
 */

#ifndef _PipelineImpllinks_H_
#define _PipelineImpllinks_H_


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

class PipelineImpllinks : public Object {
public:
	/*! \brief Constructor.
	 */
	PipelineImpllinks();
	PipelineImpllinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PipelineImpllinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	Link getRuns();

	/*! \brief Set 
	 */
	void setRuns(Link  runs);
	/*! \brief Get 
	 */
	Link getSelf();

	/*! \brief Set 
	 */
	void setSelf(Link  self);
	/*! \brief Get 
	 */
	Link getQueue();

	/*! \brief Set 
	 */
	void setQueue(Link  queue);
	/*! \brief Get 
	 */
	Link getActions();

	/*! \brief Set 
	 */
	void setActions(Link  actions);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);

private:
	Link runs;
	Link self;
	Link queue;
	Link actions;
	std::string _class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PipelineImpllinks_H_ */
