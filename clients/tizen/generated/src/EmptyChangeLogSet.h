/*
 * EmptyChangeLogSet.h
 *
 * 
 */

#ifndef _EmptyChangeLogSet_H_
#define _EmptyChangeLogSet_H_


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

class EmptyChangeLogSet : public Object {
public:
	/*! \brief Constructor.
	 */
	EmptyChangeLogSet();
	EmptyChangeLogSet(char* str);

	/*! \brief Destructor.
	 */
	virtual ~EmptyChangeLogSet();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);
	/*! \brief Get 
	 */
	std::string getKind();

	/*! \brief Set 
	 */
	void setKind(std::string  kind);

private:
	std::string _class;
	std::string kind;
	void __init();
	void __cleanup();

};
}
}

#endif /* _EmptyChangeLogSet_H_ */
