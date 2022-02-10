
/*
 * EmptyChangeLogSet.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_EmptyChangeLogSet_H_
#define TINY_CPP_CLIENT_EmptyChangeLogSet_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class EmptyChangeLogSet{
public:

    /*! \brief Constructor.
	 */
    EmptyChangeLogSet();
    EmptyChangeLogSet(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~EmptyChangeLogSet();


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
	std::string getKind();

	/*! \brief Set 
	 */
	void setKind(std::string  kind);


    private:
    std::string _class{};
    std::string kind{};
};
}

#endif /* TINY_CPP_CLIENT_EmptyChangeLogSet_H_ */
