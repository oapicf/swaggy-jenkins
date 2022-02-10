
/*
 * BranchImplpermissions.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_BranchImplpermissions_H_
#define TINY_CPP_CLIENT_BranchImplpermissions_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class BranchImplpermissions{
public:

    /*! \brief Constructor.
	 */
    BranchImplpermissions();
    BranchImplpermissions(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~BranchImplpermissions();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	bool isCreate();

	/*! \brief Set 
	 */
	void setCreate(bool  create);
	/*! \brief Get 
	 */
	bool isRead();

	/*! \brief Set 
	 */
	void setRead(bool  read);
	/*! \brief Get 
	 */
	bool isStart();

	/*! \brief Set 
	 */
	void setStart(bool  start);
	/*! \brief Get 
	 */
	bool isStop();

	/*! \brief Set 
	 */
	void setStop(bool  stop);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);


    private:
    bool create{};
    bool read{};
    bool start{};
    bool stop{};
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_BranchImplpermissions_H_ */
