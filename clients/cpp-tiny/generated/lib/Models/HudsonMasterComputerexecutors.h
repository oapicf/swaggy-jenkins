
/*
 * HudsonMasterComputerexecutors.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_HudsonMasterComputerexecutors_H_
#define TINY_CPP_CLIENT_HudsonMasterComputerexecutors_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "FreeStyleBuild.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class HudsonMasterComputerexecutors{
public:

    /*! \brief Constructor.
	 */
    HudsonMasterComputerexecutors();
    HudsonMasterComputerexecutors(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~HudsonMasterComputerexecutors();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	FreeStyleBuild getCurrentExecutable();

	/*! \brief Set 
	 */
	void setCurrentExecutable(FreeStyleBuild  currentExecutable);
	/*! \brief Get 
	 */
	bool isIdle();

	/*! \brief Set 
	 */
	void setIdle(bool  idle);
	/*! \brief Get 
	 */
	bool isLikelyStuck();

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
    bool idle{};
    bool likelyStuck{};
    int number{};
    int progress{};
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_HudsonMasterComputerexecutors_H_ */
