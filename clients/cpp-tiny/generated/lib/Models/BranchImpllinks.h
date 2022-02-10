
/*
 * BranchImpllinks.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_BranchImpllinks_H_
#define TINY_CPP_CLIENT_BranchImpllinks_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Link.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class BranchImpllinks{
public:

    /*! \brief Constructor.
	 */
    BranchImpllinks();
    BranchImpllinks(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~BranchImpllinks();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

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
	Link getRuns();

	/*! \brief Set 
	 */
	void setRuns(Link  runs);
	/*! \brief Get 
	 */
	Link getQueue();

	/*! \brief Set 
	 */
	void setQueue(Link  queue);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);


    private:
    Link self;
    Link actions;
    Link runs;
    Link queue;
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_BranchImpllinks_H_ */
