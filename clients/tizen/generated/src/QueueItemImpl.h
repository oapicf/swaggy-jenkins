/*
 * QueueItemImpl.h
 *
 * 
 */

#ifndef _QueueItemImpl_H_
#define _QueueItemImpl_H_


#include <string>
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

class QueueItemImpl : public Object {
public:
	/*! \brief Constructor.
	 */
	QueueItemImpl();
	QueueItemImpl(char* str);

	/*! \brief Destructor.
	 */
	virtual ~QueueItemImpl();

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
	int getExpectedBuildNumber();

	/*! \brief Set 
	 */
	void setExpectedBuildNumber(int  expectedBuildNumber);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getPipeline();

	/*! \brief Set 
	 */
	void setPipeline(std::string  pipeline);
	/*! \brief Get 
	 */
	int getQueuedTime();

	/*! \brief Set 
	 */
	void setQueuedTime(int  queuedTime);

private:
	std::string _class;
	int expectedBuildNumber;
	std::string id;
	std::string pipeline;
	int queuedTime;
	void __init();
	void __cleanup();

};
}
}

#endif /* _QueueItemImpl_H_ */
