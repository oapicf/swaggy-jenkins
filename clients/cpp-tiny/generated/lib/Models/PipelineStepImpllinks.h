
/*
 * PipelineStepImpllinks.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_PipelineStepImpllinks_H_
#define TINY_CPP_CLIENT_PipelineStepImpllinks_H_


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

class PipelineStepImpllinks{
public:

    /*! \brief Constructor.
	 */
    PipelineStepImpllinks();
    PipelineStepImpllinks(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~PipelineStepImpllinks();


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
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);


    private:
    Link self;
    Link actions;
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_PipelineStepImpllinks_H_ */
