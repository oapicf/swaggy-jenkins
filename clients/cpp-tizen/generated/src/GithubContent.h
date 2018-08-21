/*
 * GithubContent.h
 *
 * 
 */

#ifndef _GithubContent_H_
#define _GithubContent_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class GithubContent : public Object {
public:
	/*! \brief Constructor.
	 */
	GithubContent();
	GithubContent(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GithubContent();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

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
	std::string name;
	std::string sha;
	std::string _class;
	std::string repo;
	int size;
	std::string owner;
	std::string path;
	std::string base64Data;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GithubContent_H_ */
