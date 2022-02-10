
/*
 * PipelineRunImpllinks.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_PipelineRunImpllinks_H_
#define TINY_CPP_CLIENT_PipelineRunImpllinks_H_


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

class PipelineRunImpllinks{
public:

    /*! \brief Constructor.
	 */
    PipelineRunImpllinks();
    PipelineRunImpllinks(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~PipelineRunImpllinks();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	Link getNodes();

	/*! \brief Set 
	 */
	void setNodes(Link  nodes);
	/*! \brief Get 
	 */
	Link getLog();

	/*! \brief Set 
	 */
	void setLog(Link  log);
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
	Link getSteps();

	/*! \brief Set 
	 */
	void setSteps(Link  steps);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);


    private:
    Link nodes;
    Link log;
    Link self;
    Link actions;
    Link steps;
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_PipelineRunImpllinks_H_ */
