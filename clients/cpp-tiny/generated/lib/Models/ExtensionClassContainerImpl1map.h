
/*
 * ExtensionClassContainerImpl1map.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_ExtensionClassContainerImpl1map_H_
#define TINY_CPP_CLIENT_ExtensionClassContainerImpl1map_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "ExtensionClassImpl.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class ExtensionClassContainerImpl1map{
public:

    /*! \brief Constructor.
	 */
    ExtensionClassContainerImpl1map();
    ExtensionClassContainerImpl1map(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~ExtensionClassContainerImpl1map();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

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
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_ExtensionClassContainerImpl1map_H_ */
