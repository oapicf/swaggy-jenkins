
/*
 * GithubFile.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_GithubFile_H_
#define TINY_CPP_CLIENT_GithubFile_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "GithubContent.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class GithubFile{
public:

    /*! \brief Constructor.
	 */
    GithubFile();
    GithubFile(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~GithubFile();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	GithubContent getContent();

	/*! \brief Set 
	 */
	void setContent(GithubContent  content);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);


    private:
    GithubContent content;
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_GithubFile_H_ */
