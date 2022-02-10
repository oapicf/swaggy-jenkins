
/*
 * ExtensionClassImpl.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_ExtensionClassImpl_H_
#define TINY_CPP_CLIENT_ExtensionClassImpl_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "ExtensionClassImpllinks.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class ExtensionClassImpl{
public:

    /*! \brief Constructor.
	 */
    ExtensionClassImpl();
    ExtensionClassImpl(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~ExtensionClassImpl();


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
	ExtensionClassImpllinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(ExtensionClassImpllinks  _links);
	/*! \brief Get 
	 */
	std::list<std::string> getClasses();

	/*! \brief Set 
	 */
	void setClasses(std::list <std::string> classes);


    private:
    std::string _class{};
    ExtensionClassImpllinks _links;
    std::list<std::string> classes;
};
}

#endif /* TINY_CPP_CLIENT_ExtensionClassImpl_H_ */
