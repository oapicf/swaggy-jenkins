
/*
 * PipelineRunNode.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_PipelineRunNode_H_
#define TINY_CPP_CLIENT_PipelineRunNode_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "PipelineRunNodeedges.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class PipelineRunNode{
public:

    /*! \brief Constructor.
	 */
    PipelineRunNode();
    PipelineRunNode(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~PipelineRunNode();


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
	std::string getDisplayName();

	/*! \brief Set 
	 */
	void setDisplayName(std::string  displayName);
	/*! \brief Get 
	 */
	int getDurationInMillis();

	/*! \brief Set 
	 */
	void setDurationInMillis(int  durationInMillis);
	/*! \brief Get 
	 */
	std::list<PipelineRunNodeedges> getEdges();

	/*! \brief Set 
	 */
	void setEdges(std::list <PipelineRunNodeedges> edges);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getResult();

	/*! \brief Set 
	 */
	void setResult(std::string  result);
	/*! \brief Get 
	 */
	std::string getStartTime();

	/*! \brief Set 
	 */
	void setStartTime(std::string  startTime);
	/*! \brief Get 
	 */
	std::string getState();

	/*! \brief Set 
	 */
	void setState(std::string  state);


    private:
    std::string _class{};
    std::string displayName{};
    int durationInMillis{};
    std::list<PipelineRunNodeedges> edges;
    std::string id{};
    std::string result{};
    std::string startTime{};
    std::string state{};
};
}

#endif /* TINY_CPP_CLIENT_PipelineRunNode_H_ */
