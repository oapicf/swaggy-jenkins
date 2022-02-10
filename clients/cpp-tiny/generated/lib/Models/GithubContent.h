
/*
 * GithubContent.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_GithubContent_H_
#define TINY_CPP_CLIENT_GithubContent_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class GithubContent{
public:

    /*! \brief Constructor.
	 */
    GithubContent();
    GithubContent(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~GithubContent();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getSha();

	/*! \brief Set 
	 */
	void setSha(std::string  sha);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);
	/*! \brief Get 
	 */
	std::string getRepo();

	/*! \brief Set 
	 */
	void setRepo(std::string  repo);
	/*! \brief Get 
	 */
	int getSize();

	/*! \brief Set 
	 */
	void setSize(int  size);
	/*! \brief Get 
	 */
	std::string getOwner();

	/*! \brief Set 
	 */
	void setOwner(std::string  owner);
	/*! \brief Get 
	 */
	std::string getPath();

	/*! \brief Set 
	 */
	void setPath(std::string  path);
	/*! \brief Get 
	 */
	std::string getBase64Data();

	/*! \brief Set 
	 */
	void setBase64Data(std::string  base64Data);


    private:
    std::string name{};
    std::string sha{};
    std::string _class{};
    std::string repo{};
    int size{};
    std::string owner{};
    std::string path{};
    std::string base64Data{};
};
}

#endif /* TINY_CPP_CLIENT_GithubContent_H_ */
