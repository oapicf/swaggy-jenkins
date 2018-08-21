/*
 * DiskSpaceMonitorDescriptorDiskSpace.h
 *
 * 
 */

#ifndef _DiskSpaceMonitorDescriptorDiskSpace_H_
#define _DiskSpaceMonitorDescriptorDiskSpace_H_


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

class DiskSpaceMonitorDescriptorDiskSpace : public Object {
public:
	/*! \brief Constructor.
	 */
	DiskSpaceMonitorDescriptorDiskSpace();
	DiskSpaceMonitorDescriptorDiskSpace(char* str);

	/*! \brief Destructor.
	 */
	virtual ~DiskSpaceMonitorDescriptorDiskSpace();

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
	std::string _class;
	int timestamp;
	std::string path;
	int size;
	void __init();
	void __cleanup();

};
}
}

#endif /* _DiskSpaceMonitorDescriptorDiskSpace_H_ */
