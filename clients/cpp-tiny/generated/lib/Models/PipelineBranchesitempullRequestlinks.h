
/*
 * PipelineBranchesitempullRequestlinks.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_PipelineBranchesitempullRequestlinks_H_
#define TINY_CPP_CLIENT_PipelineBranchesitempullRequestlinks_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class PipelineBranchesitempullRequestlinks{
public:

    /*! \brief Constructor.
	 */
    PipelineBranchesitempullRequestlinks();
    PipelineBranchesitempullRequestlinks(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~PipelineBranchesitempullRequestlinks();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	std::string getSelf();

	/*! \brief Set 
	 */
	void setSelf(std::string  self);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);


    private:
    std::string self{};
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_PipelineBranchesitempullRequestlinks_H_ */
