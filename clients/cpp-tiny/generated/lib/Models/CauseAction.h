
/*
 * CauseAction.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_CauseAction_H_
#define TINY_CPP_CLIENT_CauseAction_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "CauseUserIdCause.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class CauseAction{
public:

    /*! \brief Constructor.
	 */
    CauseAction();
    CauseAction(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~CauseAction();


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
	std::list<CauseUserIdCause> getCauses();

	/*! \brief Set 
	 */
	void setCauses(std::list <CauseUserIdCause> causes);


    private:
    std::string _class{};
    std::list<CauseUserIdCause> causes;
};
}

#endif /* TINY_CPP_CLIENT_CauseAction_H_ */
