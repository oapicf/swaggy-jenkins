
/*
 * ExtensionClassContainerImpl1.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_ExtensionClassContainerImpl1_H_
#define TINY_CPP_CLIENT_ExtensionClassContainerImpl1_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "ExtensionClassContainerImpl1links.h"
#include "ExtensionClassContainerImpl1map.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class ExtensionClassContainerImpl1{
public:

    /*! \brief Constructor.
	 */
    ExtensionClassContainerImpl1();
    ExtensionClassContainerImpl1(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~ExtensionClassContainerImpl1();


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
	ExtensionClassContainerImpl1links getLinks();

	/*! \brief Set 
	 */
	void setLinks(ExtensionClassContainerImpl1links  _links);
	/*! \brief Get 
	 */
	ExtensionClassContainerImpl1map getMap();

	/*! \brief Set 
	 */
	void setMap(ExtensionClassContainerImpl1map  map);


    private:
    std::string _class{};
    ExtensionClassContainerImpl1links _links;
    ExtensionClassContainerImpl1map map;
};
}

#endif /* TINY_CPP_CLIENT_ExtensionClassContainerImpl1_H_ */
