
/*
 * GithubRepositorypermissions.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_GithubRepositorypermissions_H_
#define TINY_CPP_CLIENT_GithubRepositorypermissions_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class GithubRepositorypermissions{
public:

    /*! \brief Constructor.
	 */
    GithubRepositorypermissions();
    GithubRepositorypermissions(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~GithubRepositorypermissions();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	bool isAdmin();

	/*! \brief Set 
	 */
	void setAdmin(bool  admin);
	/*! \brief Get 
	 */
	bool isPush();

	/*! \brief Set 
	 */
	void setPush(bool  push);
	/*! \brief Get 
	 */
	bool isPull();

	/*! \brief Set 
	 */
	void setPull(bool  pull);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);


    private:
    bool admin{};
    bool push{};
    bool pull{};
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_GithubRepositorypermissions_H_ */
