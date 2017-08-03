/*
 * BranchImplpermissions.h
 *
 * 
 */

#ifndef _BranchImplpermissions_H_
#define _BranchImplpermissions_H_


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

class BranchImplpermissions : public Object {
public:
	/*! \brief Constructor.
	 */
	BranchImplpermissions();
	BranchImplpermissions(char* str);

	/*! \brief Destructor.
	 */
	virtual ~BranchImplpermissions();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	bool getCreate();

	/*! \brief Set 
	 */
	void setCreate(bool  create);
	/*! \brief Get 
	 */
	bool getRead();

	/*! \brief Set 
	 */
	void setRead(bool  read);
	/*! \brief Get 
	 */
	bool getStart();

	/*! \brief Set 
	 */
	void setStart(bool  start);
	/*! \brief Get 
	 */
	bool getStop();

	/*! \brief Set 
	 */
	void setStop(bool  stop);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);

private:
	bool create;
	bool read;
	bool start;
	bool stop;
	std::string _class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _BranchImplpermissions_H_ */
