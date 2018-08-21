/*
 * GithubFile.h
 *
 * 
 */

#ifndef _GithubFile_H_
#define _GithubFile_H_


#include <string>
#include "GithubContent.h"
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

class GithubFile : public Object {
public:
	/*! \brief Constructor.
	 */
	GithubFile();
	GithubFile(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GithubFile();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

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
	std::string _class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GithubFile_H_ */
