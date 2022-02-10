
/*
 * QueueItemImpl.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_QueueItemImpl_H_
#define TINY_CPP_CLIENT_QueueItemImpl_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class QueueItemImpl{
public:

    /*! \brief Constructor.
	 */
    QueueItemImpl();
    QueueItemImpl(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~QueueItemImpl();


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
	int getExpectedBuildNumber();

	/*! \brief Set 
	 */
	void setExpectedBuildNumber(int  expectedBuildNumber);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getPipeline();

	/*! \brief Set 
	 */
	void setPipeline(std::string  pipeline);
	/*! \brief Get 
	 */
	int getQueuedTime();

	/*! \brief Set 
	 */
	void setQueuedTime(int  queuedTime);


    private:
    std::string _class{};
    int expectedBuildNumber{};
    std::string id{};
    std::string pipeline{};
    int queuedTime{};
};
}

#endif /* TINY_CPP_CLIENT_QueueItemImpl_H_ */
