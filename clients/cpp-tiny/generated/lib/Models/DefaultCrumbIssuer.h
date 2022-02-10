
/*
 * DefaultCrumbIssuer.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_DefaultCrumbIssuer_H_
#define TINY_CPP_CLIENT_DefaultCrumbIssuer_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class DefaultCrumbIssuer{
public:

    /*! \brief Constructor.
	 */
    DefaultCrumbIssuer();
    DefaultCrumbIssuer(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~DefaultCrumbIssuer();


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
	std::string getCrumb();

	/*! \brief Set 
	 */
	void setCrumb(std::string  crumb);
	/*! \brief Get 
	 */
	std::string getCrumbRequestField();

	/*! \brief Set 
	 */
	void setCrumbRequestField(std::string  crumbRequestField);


    private:
    std::string _class{};
    std::string crumb{};
    std::string crumbRequestField{};
};
}

#endif /* TINY_CPP_CLIENT_DefaultCrumbIssuer_H_ */
