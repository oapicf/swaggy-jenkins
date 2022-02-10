
/*
 * FavoriteImpl.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_FavoriteImpl_H_
#define TINY_CPP_CLIENT_FavoriteImpl_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "FavoriteImpllinks.h"
#include "PipelineImpl.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class FavoriteImpl{
public:

    /*! \brief Constructor.
	 */
    FavoriteImpl();
    FavoriteImpl(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~FavoriteImpl();


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
    std::string _class{};
    FavoriteImpllinks _links;
    PipelineImpl item;
};
}

#endif /* TINY_CPP_CLIENT_FavoriteImpl_H_ */
