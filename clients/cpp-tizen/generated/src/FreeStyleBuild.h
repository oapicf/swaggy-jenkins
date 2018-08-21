/*
 * FreeStyleBuild.h
 *
 * 
 */

#ifndef _FreeStyleBuild_H_
#define _FreeStyleBuild_H_


#include <string>
#include "CauseAction.h"
#include "EmptyChangeLogSet.h"
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

class FreeStyleBuild : public Object {
public:
	/*! \brief Constructor.
	 */
	FreeStyleBuild();
	FreeStyleBuild(char* str);

	/*! \brief Destructor.
	 */
	virtual ~FreeStyleBuild();

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
	int getNumber();

	/*! \brief Set 
	 */
	void setNumber(int  number);
	/*! \brief Get 
	 */
	std::string getUrl();

	/*! \brief Set 
	 */
	void setUrl(std::string  url);
	/*! \brief Get 
	 */
	std::list<CauseAction> getActions();

	/*! \brief Set 
	 */
	void setActions(std::list <CauseAction> actions);
	/*! \brief Get 
	 */
	bool getBuilding();

	/*! \brief Set 
	 */
	void setBuilding(bool  building);
	/*! \brief Get 
	 */
	std::string getDescription();

	/*! \brief Set 
	 */
	void setDescription(std::string  description);
	/*! \brief Get 
	 */
	std::string getDisplayName();

	/*! \brief Set 
	 */
	void setDisplayName(std::string  displayName);
	/*! \brief Get 
	 */
	int getDuration();

	/*! \brief Set 
	 */
	void setDuration(int  duration);
	/*! \brief Get 
	 */
	int getEstimatedDuration();

	/*! \brief Set 
	 */
	void setEstimatedDuration(int  estimatedDuration);
	/*! \brief Get 
	 */
	std::string getExecutor();

	/*! \brief Set 
	 */
	void setExecutor(std::string  executor);
	/*! \brief Get 
	 */
	std::string getFullDisplayName();

	/*! \brief Set 
	 */
	void setFullDisplayName(std::string  fullDisplayName);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	bool getKeepLog();

	/*! \brief Set 
	 */
	void setKeepLog(bool  keepLog);
	/*! \brief Get 
	 */
	int getQueueId();

	/*! \brief Set 
	 */
	void setQueueId(int  queueId);
	/*! \brief Get 
	 */
	std::string getResult();

	/*! \brief Set 
	 */
	void setResult(std::string  result);
	/*! \brief Get 
	 */
	int getTimestamp();

	/*! \brief Set 
	 */
	void setTimestamp(int  timestamp);
	/*! \brief Get 
	 */
	std::string getBuiltOn();

	/*! \brief Set 
	 */
	void setBuiltOn(std::string  builtOn);
	/*! \brief Get 
	 */
	EmptyChangeLogSet getChangeSet();

	/*! \brief Set 
	 */
	void setChangeSet(EmptyChangeLogSet  changeSet);

private:
	std::string _class;
	int number;
	std::string url;
	std::list <CauseAction>actions;
	bool building;
	std::string description;
	std::string displayName;
	int duration;
	int estimatedDuration;
	std::string executor;
	std::string fullDisplayName;
	std::string id;
	bool keepLog;
	int queueId;
	std::string result;
	int timestamp;
	std::string builtOn;
	EmptyChangeLogSet changeSet;
	void __init();
	void __cleanup();

};
}
}

#endif /* _FreeStyleBuild_H_ */
