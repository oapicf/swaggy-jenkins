
/*
 * DiskSpaceMonitorDescriptorDiskSpace.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_DiskSpaceMonitorDescriptorDiskSpace_H_
#define TINY_CPP_CLIENT_DiskSpaceMonitorDescriptorDiskSpace_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class DiskSpaceMonitorDescriptorDiskSpace{
public:

    /*! \brief Constructor.
	 */
    DiskSpaceMonitorDescriptorDiskSpace();
    DiskSpaceMonitorDescriptorDiskSpace(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~DiskSpaceMonitorDescriptorDiskSpace();


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
	int getTimestamp();

	/*! \brief Set 
	 */
	void setTimestamp(int  timestamp);
	/*! \brief Get 
	 */
	std::string getPath();

	/*! \brief Set 
	 */
	void setPath(std::string  path);
	/*! \brief Get 
	 */
	int getSize();

	/*! \brief Set 
	 */
	void setSize(int  size);


    private:
    std::string _class{};
    int timestamp{};
    std::string path{};
    int size{};
};
}

#endif /* TINY_CPP_CLIENT_DiskSpaceMonitorDescriptorDiskSpace_H_ */
