
/*
 * QueueLeftItem.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_QueueLeftItem_H_
#define TINY_CPP_CLIENT_QueueLeftItem_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "CauseAction.h"
#include "FreeStyleBuild.h"
#include "FreeStyleProject.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class QueueLeftItem{
public:

    /*! \brief Constructor.
	 */
    QueueLeftItem();
    QueueLeftItem(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~QueueLeftItem();


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
	std::list<CauseAction> getActions();

	/*! \brief Set 
	 */
	void setActions(std::list <CauseAction> actions);
	/*! \brief Get 
	 */
	bool isBlocked();

	/*! \brief Set 
	 */
	void setBlocked(bool  blocked);
	/*! \brief Get 
	 */
	bool isBuildable();

	/*! \brief Set 
	 */
	void setBuildable(bool  buildable);
	/*! \brief Get 
	 */
	int getId();

	/*! \brief Set 
	 */
	void setId(int  id);
	/*! \brief Get 
	 */
	int getInQueueSince();

	/*! \brief Set 
	 */
	void setInQueueSince(int  inQueueSince);
	/*! \brief Get 
	 */
	std::string getParams();

	/*! \brief Set 
	 */
	void setParams(std::string  params);
	/*! \brief Get 
	 */
	bool isStuck();

	/*! \brief Set 
	 */
	void setStuck(bool  stuck);
	/*! \brief Get 
	 */
	FreeStyleProject getTask();

	/*! \brief Set 
	 */
	void setTask(FreeStyleProject  task);
	/*! \brief Get 
	 */
	std::string getUrl();

	/*! \brief Set 
	 */
	void setUrl(std::string  url);
	/*! \brief Get 
	 */
	std::string getWhy();

	/*! \brief Set 
	 */
	void setWhy(std::string  why);
	/*! \brief Get 
	 */
	bool isCancelled();

	/*! \brief Set 
	 */
	void setCancelled(bool  cancelled);
	/*! \brief Get 
	 */
	FreeStyleBuild getExecutable();

	/*! \brief Set 
	 */
	void setExecutable(FreeStyleBuild  executable);


    private:
    std::string _class{};
    std::list<CauseAction> actions;
    bool blocked{};
    bool buildable{};
    int id{};
    int inQueueSince{};
    std::string params{};
    bool stuck{};
    FreeStyleProject task;
    std::string url{};
    std::string why{};
    bool cancelled{};
    FreeStyleBuild executable;
};
}

#endif /* TINY_CPP_CLIENT_QueueLeftItem_H_ */
