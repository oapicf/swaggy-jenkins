/*
 * ComputerSet.h
 *
 * 
 */

#ifndef _ComputerSet_H_
#define _ComputerSet_H_


#include <string>
#include "HudsonMasterComputer.h"
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

class ComputerSet : public Object {
public:
	/*! \brief Constructor.
	 */
	ComputerSet();
	ComputerSet(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ComputerSet();

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
	int getBusyExecutors();

	/*! \brief Set 
	 */
	void setBusyExecutors(int  busyExecutors);
	/*! \brief Get 
	 */
	std::list<HudsonMasterComputer> getComputer();

	/*! \brief Set 
	 */
	void setComputer(std::list <HudsonMasterComputer> computer);
	/*! \brief Get 
	 */
	std::string getDisplayName();

	/*! \brief Set 
	 */
	void setDisplayName(std::string  displayName);
	/*! \brief Get 
	 */
	int getTotalExecutors();

	/*! \brief Set 
	 */
	void setTotalExecutors(int  totalExecutors);

private:
	std::string _class;
	int busyExecutors;
	std::list <HudsonMasterComputer>computer;
	std::string displayName;
	int totalExecutors;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ComputerSet_H_ */
