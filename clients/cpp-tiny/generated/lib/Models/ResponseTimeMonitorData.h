
/*
 * ResponseTimeMonitorData.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_ResponseTimeMonitorData_H_
#define TINY_CPP_CLIENT_ResponseTimeMonitorData_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class ResponseTimeMonitorData{
public:

    /*! \brief Constructor.
	 */
    ResponseTimeMonitorData();
    ResponseTimeMonitorData(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~ResponseTimeMonitorData();


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
	int getTimestamp();

	/*! \brief Set 
	 */
	void setTimestamp(int  timestamp);
	/*! \brief Get 
	 */
	int getAverage();

	/*! \brief Set 
	 */
	void setAverage(int  average);


    private:
    std::string _class{};
    int timestamp{};
    int average{};
};
}

#endif /* TINY_CPP_CLIENT_ResponseTimeMonitorData_H_ */
