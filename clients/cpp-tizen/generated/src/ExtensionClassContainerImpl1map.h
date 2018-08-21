/*
 * ExtensionClassContainerImpl1map.h
 *
 * 
 */

#ifndef _ExtensionClassContainerImpl1map_H_
#define _ExtensionClassContainerImpl1map_H_


#include <string>
#include "ExtensionClassImpl.h"
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

class ExtensionClassContainerImpl1map : public Object {
public:
	/*! \brief Constructor.
	 */
	ExtensionClassContainerImpl1map();
	ExtensionClassContainerImpl1map(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExtensionClassContainerImpl1map();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ExtensionClassImpl getIojenkinsblueoceanserviceembeddedrestPipelineImpl();

	/*! \brief Set 
	 */
	void setIojenkinsblueoceanserviceembeddedrestPipelineImpl(ExtensionClassImpl  iojenkinsblueoceanserviceembeddedrestPipelineImpl);
	/*! \brief Get 
	 */
	ExtensionClassImpl getIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl();

	/*! \brief Set 
	 */
	void setIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl(ExtensionClassImpl  iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);

private:
	ExtensionClassImpl iojenkinsblueoceanserviceembeddedrestPipelineImpl;
	ExtensionClassImpl iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl;
	std::string _class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExtensionClassContainerImpl1map_H_ */
