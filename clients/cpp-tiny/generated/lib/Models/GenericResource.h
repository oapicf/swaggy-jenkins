
/*
 * GenericResource.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_GenericResource_H_
#define TINY_CPP_CLIENT_GenericResource_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class GenericResource{
public:

    /*! \brief Constructor.
	 */
    GenericResource();
    GenericResource(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~GenericResource();


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


    private:
    std::string _class{};
    std::string displayName{};
    int durationInMillis{};
    std::string id{};
    std::string result{};
    std::string startTime{};
};
}

#endif /* TINY_CPP_CLIENT_GenericResource_H_ */
