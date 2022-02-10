
/*
 * HudsonassignedLabels.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_HudsonassignedLabels_H_
#define TINY_CPP_CLIENT_HudsonassignedLabels_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class HudsonassignedLabels{
public:

    /*! \brief Constructor.
	 */
    HudsonassignedLabels();
    HudsonassignedLabels(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~HudsonassignedLabels();


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


    private:
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_HudsonassignedLabels_H_ */
