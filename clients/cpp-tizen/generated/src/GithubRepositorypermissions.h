/*
 * GithubRepositorypermissions.h
 *
 * 
 */

#ifndef _GithubRepositorypermissions_H_
#define _GithubRepositorypermissions_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class GithubRepositorypermissions : public Object {
public:
	/*! \brief Constructor.
	 */
	GithubRepositorypermissions();
	GithubRepositorypermissions(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GithubRepositorypermissions();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	bool getAdmin();

	/*! \brief Set 
	 */
	void setAdmin(bool  admin);
	/*! \brief Get 
	 */
	bool getPush();

	/*! \brief Set 
	 */
	void setPush(bool  push);
	/*! \brief Get 
	 */
	bool getPull();

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
	bool admin;
	bool push;
	bool pull;
	std::string _class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GithubRepositorypermissions_H_ */
