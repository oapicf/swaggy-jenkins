
/*
 * ClassesByClass.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_ClassesByClass_H_
#define TINY_CPP_CLIENT_ClassesByClass_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class ClassesByClass{
public:

    /*! \brief Constructor.
	 */
    ClassesByClass();
    ClassesByClass(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~ClassesByClass();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	std::list<std::string> getClasses();

	/*! \brief Set 
	 */
	void setClasses(std::list <std::string> classes);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);


    private:
    std::list<std::string> classes;
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_ClassesByClass_H_ */
