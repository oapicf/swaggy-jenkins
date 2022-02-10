
/*
 * PipelineFolderImpl.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_PipelineFolderImpl_H_
#define TINY_CPP_CLIENT_PipelineFolderImpl_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class PipelineFolderImpl{
public:

    /*! \brief Constructor.
	 */
    PipelineFolderImpl();
    PipelineFolderImpl(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~PipelineFolderImpl();


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
    std::string _class{};
    std::string displayName{};
    std::string fullName{};
    std::string name{};
    std::string organization{};
    int numberOfFolders{};
    int numberOfPipelines{};
};
}

#endif /* TINY_CPP_CLIENT_PipelineFolderImpl_H_ */
