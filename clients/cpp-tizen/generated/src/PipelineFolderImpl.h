/*
 * PipelineFolderImpl.h
 *
 * 
 */

#ifndef _PipelineFolderImpl_H_
#define _PipelineFolderImpl_H_


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

class PipelineFolderImpl : public Object {
public:
	/*! \brief Constructor.
	 */
	PipelineFolderImpl();
	PipelineFolderImpl(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PipelineFolderImpl();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);
	/*! \brief Get 
	 */
	std::string getDisplayName();

	/*! \brief Set 
	 */
	void setDisplayName(std::string  displayName);
	/*! \brief Get 
	 */
	std::string getFullName();

	/*! \brief Set 
	 */
	void setFullName(std::string  fullName);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getOrganization();

	/*! \brief Set 
	 */
	void setOrganization(std::string  organization);
	/*! \brief Get 
	 */
	int getNumberOfFolders();

	/*! \brief Set 
	 */
	void setNumberOfFolders(int  numberOfFolders);
	/*! \brief Get 
	 */
	int getNumberOfPipelines();

	/*! \brief Set 
	 */
	void setNumberOfPipelines(int  numberOfPipelines);

private:
	std::string _class;
	std::string displayName;
	std::string fullName;
	std::string name;
	std::string organization;
	int numberOfFolders;
	int numberOfPipelines;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PipelineFolderImpl_H_ */
