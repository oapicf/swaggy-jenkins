/*
 * HudsonMasterComputerexecutors.h
 *
 * 
 */

#ifndef _HudsonMasterComputerexecutors_H_
#define _HudsonMasterComputerexecutors_H_


#include <string>
#include "FreeStyleBuild.h"
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

class HudsonMasterComputerexecutors : public Object {
public:
	/*! \brief Constructor.
	 */
	HudsonMasterComputerexecutors();
	HudsonMasterComputerexecutors(char* str);

	/*! \brief Destructor.
	 */
	virtual ~HudsonMasterComputerexecutors();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	FreeStyleBuild getCurrentExecutable();

	/*! \brief Set 
	 */
	void setCurrentExecutable(FreeStyleBuild  currentExecutable);
	/*! \brief Get 
	 */
	bool getIdle();

	/*! \brief Set 
	 */
	void setIdle(bool  idle);
	/*! \brief Get 
	 */
	bool getLikelyStuck();

	/*! \brief Set 
	 */
	void setLikelyStuck(bool  likelyStuck);
	/*! \brief Get 
	 */
	int getNumber();

	/*! \brief Set 
	 */
	void setNumber(int  number);
	/*! \brief Get 
	 */
	int getProgress();

	/*! \brief Set 
	 */
	void setProgress(int  progress);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);

private:
	FreeStyleBuild currentExecutable;
	bool idle;
	bool likelyStuck;
	int number;
	int progress;
	std::string _class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _HudsonMasterComputerexecutors_H_ */
