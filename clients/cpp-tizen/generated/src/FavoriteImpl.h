/*
 * FavoriteImpl.h
 *
 * 
 */

#ifndef _FavoriteImpl_H_
#define _FavoriteImpl_H_


#include <string>
#include "FavoriteImpllinks.h"
#include "PipelineImpl.h"
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

class FavoriteImpl : public Object {
public:
	/*! \brief Constructor.
	 */
	FavoriteImpl();
	FavoriteImpl(char* str);

	/*! \brief Destructor.
	 */
	virtual ~FavoriteImpl();

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
	FavoriteImpllinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(FavoriteImpllinks  _links);
	/*! \brief Get 
	 */
	PipelineImpl getItem();

	/*! \brief Set 
	 */
	void setItem(PipelineImpl  item);

private:
	std::string _class;
	FavoriteImpllinks _links;
	PipelineImpl item;
	void __init();
	void __cleanup();

};
}
}

#endif /* _FavoriteImpl_H_ */
