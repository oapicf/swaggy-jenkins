/*
 * QueueLeftItem.h
 *
 * 
 */

#ifndef _QueueLeftItem_H_
#define _QueueLeftItem_H_


#include <string>
#include "CauseAction.h"
#include "FreeStyleBuild.h"
#include "FreeStyleProject.h"
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

class QueueLeftItem : public Object {
public:
	/*! \brief Constructor.
	 */
	QueueLeftItem();
	QueueLeftItem(char* str);

	/*! \brief Destructor.
	 */
	virtual ~QueueLeftItem();

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
	std::list<CauseAction> getActions();

	/*! \brief Set 
	 */
	void setActions(std::list <CauseAction> actions);
	/*! \brief Get 
	 */
	bool getBlocked();

	/*! \brief Set 
	 */
	void setBlocked(bool  blocked);
	/*! \brief Get 
	 */
	bool getBuildable();

	/*! \brief Set 
	 */
	void setBuildable(bool  buildable);
	/*! \brief Get 
	 */
	int getId();

	/*! \brief Set 
	 */
	void setId(int  id);
	/*! \brief Get 
	 */
	int getInQueueSince();

	/*! \brief Set 
	 */
	void setInQueueSince(int  inQueueSince);
	/*! \brief Get 
	 */
	std::string getParams();

	/*! \brief Set 
	 */
	void setParams(std::string  params);
	/*! \brief Get 
	 */
	bool getStuck();

	/*! \brief Set 
	 */
	void setStuck(bool  stuck);
	/*! \brief Get 
	 */
	FreeStyleProject getTask();

	/*! \brief Set 
	 */
	void setTask(FreeStyleProject  task);
	/*! \brief Get 
	 */
	std::string getUrl();

	/*! \brief Set 
	 */
	void setUrl(std::string  url);
	/*! \brief Get 
	 */
	std::string getWhy();

	/*! \brief Set 
	 */
	void setWhy(std::string  why);
	/*! \brief Get 
	 */
	bool getCancelled();

	/*! \brief Set 
	 */
	void setCancelled(bool  cancelled);
	/*! \brief Get 
	 */
	FreeStyleBuild getExecutable();

	/*! \brief Set 
	 */
	void setExecutable(FreeStyleBuild  executable);

private:
	std::string _class;
	std::list <CauseAction>actions;
	bool blocked;
	bool buildable;
	int id;
	int inQueueSince;
	std::string params;
	bool stuck;
	FreeStyleProject task;
	std::string url;
	std::string why;
	bool cancelled;
	FreeStyleBuild executable;
	void __init();
	void __cleanup();

};
}
}

#endif /* _QueueLeftItem_H_ */
