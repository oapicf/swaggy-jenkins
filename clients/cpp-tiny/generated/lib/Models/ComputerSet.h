
/*
 * ComputerSet.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_ComputerSet_H_
#define TINY_CPP_CLIENT_ComputerSet_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "HudsonMasterComputer.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class ComputerSet{
public:

    /*! \brief Constructor.
	 */
    ComputerSet();
    ComputerSet(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~ComputerSet();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

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
    std::string _class{};
    int busyExecutors{};
    std::list<HudsonMasterComputer> computer;
    std::string displayName{};
    int totalExecutors{};
};
}

#endif /* TINY_CPP_CLIENT_ComputerSet_H_ */
