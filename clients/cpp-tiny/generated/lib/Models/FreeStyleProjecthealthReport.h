
/*
 * FreeStyleProjecthealthReport.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_FreeStyleProjecthealthReport_H_
#define TINY_CPP_CLIENT_FreeStyleProjecthealthReport_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class FreeStyleProjecthealthReport{
public:

    /*! \brief Constructor.
	 */
    FreeStyleProjecthealthReport();
    FreeStyleProjecthealthReport(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~FreeStyleProjecthealthReport();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	std::string getDescription();

	/*! \brief Set 
	 */
	void setDescription(std::string  description);
	/*! \brief Get 
	 */
	std::string getIconClassName();

	/*! \brief Set 
	 */
	void setIconClassName(std::string  iconClassName);
	/*! \brief Get 
	 */
	std::string getIconUrl();

	/*! \brief Set 
	 */
	void setIconUrl(std::string  iconUrl);
	/*! \brief Get 
	 */
	int getScore();

	/*! \brief Set 
	 */
	void setScore(int  score);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);


    private:
    std::string description{};
    std::string iconClassName{};
    std::string iconUrl{};
    int score{};
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_FreeStyleProjecthealthReport_H_ */
