
/*
 * PipelinelatestRunartifacts.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_PipelinelatestRunartifacts_H_
#define TINY_CPP_CLIENT_PipelinelatestRunartifacts_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class PipelinelatestRunartifacts{
public:

    /*! \brief Constructor.
	 */
    PipelinelatestRunartifacts();
    PipelinelatestRunartifacts(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~PipelinelatestRunartifacts();


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
	int getSize();

	/*! \brief Set 
	 */
	void setSize(int  size);
	/*! \brief Get 
	 */
	std::string getUrl();

	/*! \brief Set 
	 */
	void setUrl(std::string  url);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);


    private:
    std::string name{};
    int size{};
    std::string url{};
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_PipelinelatestRunartifacts_H_ */
