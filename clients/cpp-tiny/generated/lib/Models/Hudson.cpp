

#include "Hudson.h"

using namespace Tiny;

Hudson::Hudson()
{
	_class = std::string();
	assignedLabels = std::list<HudsonassignedLabels>();
	mode = std::string();
	nodeDescription = std::string();
	nodeName = std::string();
	numExecutors = int(0);
	description = std::string();
	jobs = std::list<FreeStyleProject>();
	primaryView = AllView();
	quietingDown = bool(false);
	slaveAgentPort = int(0);
	unlabeledLoad = UnlabeledLoadStatistics();
	useCrumbs = bool(false);
	useSecurity = bool(false);
	views = std::list<AllView>();
}

Hudson::Hudson(std::string jsonString)
{
	this->fromJson(jsonString);
}

Hudson::~Hudson()
{

}

void
Hudson::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *assignedLabelsKey = "assignedLabels";

    if(object.has_key(assignedLabelsKey))
    {
        bourne::json value = object[assignedLabelsKey];


        std::list<HudsonassignedLabels> assignedLabels_list;
        HudsonassignedLabels element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            assignedLabels_list.push_back(element);
        }
        assignedLabels = assignedLabels_list;


    }

    const char *modeKey = "mode";

    if(object.has_key(modeKey))
    {
        bourne::json value = object[modeKey];



        jsonToValue(&mode, value, "std::string");


    }

    const char *nodeDescriptionKey = "nodeDescription";

    if(object.has_key(nodeDescriptionKey))
    {
        bourne::json value = object[nodeDescriptionKey];



        jsonToValue(&nodeDescription, value, "std::string");


    }

    const char *nodeNameKey = "nodeName";

    if(object.has_key(nodeNameKey))
    {
        bourne::json value = object[nodeNameKey];



        jsonToValue(&nodeName, value, "std::string");


    }

    const char *numExecutorsKey = "numExecutors";

    if(object.has_key(numExecutorsKey))
    {
        bourne::json value = object[numExecutorsKey];



        jsonToValue(&numExecutors, value, "int");


    }

    const char *descriptionKey = "description";

    if(object.has_key(descriptionKey))
    {
        bourne::json value = object[descriptionKey];



        jsonToValue(&description, value, "std::string");


    }

    const char *jobsKey = "jobs";

    if(object.has_key(jobsKey))
    {
        bourne::json value = object[jobsKey];


        std::list<FreeStyleProject> jobs_list;
        FreeStyleProject element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            jobs_list.push_back(element);
        }
        jobs = jobs_list;


    }

    const char *primaryViewKey = "primaryView";

    if(object.has_key(primaryViewKey))
    {
        bourne::json value = object[primaryViewKey];




        AllView* obj = &primaryView;
		obj->fromJson(value.dump());

    }

    const char *quietingDownKey = "quietingDown";

    if(object.has_key(quietingDownKey))
    {
        bourne::json value = object[quietingDownKey];



        jsonToValue(&quietingDown, value, "bool");


    }

    const char *slaveAgentPortKey = "slaveAgentPort";

    if(object.has_key(slaveAgentPortKey))
    {
        bourne::json value = object[slaveAgentPortKey];



        jsonToValue(&slaveAgentPort, value, "int");


    }

    const char *unlabeledLoadKey = "unlabeledLoad";

    if(object.has_key(unlabeledLoadKey))
    {
        bourne::json value = object[unlabeledLoadKey];




        UnlabeledLoadStatistics* obj = &unlabeledLoad;
		obj->fromJson(value.dump());

    }

    const char *useCrumbsKey = "useCrumbs";

    if(object.has_key(useCrumbsKey))
    {
        bourne::json value = object[useCrumbsKey];



        jsonToValue(&useCrumbs, value, "bool");


    }

    const char *useSecurityKey = "useSecurity";

    if(object.has_key(useSecurityKey))
    {
        bourne::json value = object[useSecurityKey];



        jsonToValue(&useSecurity, value, "bool");


    }

    const char *viewsKey = "views";

    if(object.has_key(viewsKey))
    {
        bourne::json value = object[viewsKey];


        std::list<AllView> views_list;
        AllView element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            views_list.push_back(element);
        }
        views = views_list;


    }


}

bourne::json
Hudson::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();





    std::list<HudsonassignedLabels> assignedLabels_list = getAssignedLabels();
    bourne::json assignedLabels_arr = bourne::json::array();

    for(auto& var : assignedLabels_list)
    {
        HudsonassignedLabels obj = var;
        assignedLabels_arr.append(obj.toJson());
    }
    object["assignedLabels"] = assignedLabels_arr;







    object["mode"] = getMode();






    object["nodeDescription"] = getNodeDescription();






    object["nodeName"] = getNodeName();






    object["numExecutors"] = getNumExecutors();






    object["description"] = getDescription();





    std::list<FreeStyleProject> jobs_list = getJobs();
    bourne::json jobs_arr = bourne::json::array();

    for(auto& var : jobs_list)
    {
        FreeStyleProject obj = var;
        jobs_arr.append(obj.toJson());
    }
    object["jobs"] = jobs_arr;








	object["primaryView"] = getPrimaryView().toJson();





    object["quietingDown"] = isQuietingDown();






    object["slaveAgentPort"] = getSlaveAgentPort();







	object["unlabeledLoad"] = getUnlabeledLoad().toJson();





    object["useCrumbs"] = isUseCrumbs();






    object["useSecurity"] = isUseSecurity();





    std::list<AllView> views_list = getViews();
    bourne::json views_arr = bourne::json::array();

    for(auto& var : views_list)
    {
        AllView obj = var;
        views_arr.append(obj.toJson());
    }
    object["views"] = views_arr;




    return object;

}

std::string
Hudson::getClass()
{
	return _class;
}

void
Hudson::setClass(std::string  _class)
{
	this->_class = _class;
}

std::list<HudsonassignedLabels>
Hudson::getAssignedLabels()
{
	return assignedLabels;
}

void
Hudson::setAssignedLabels(std::list <HudsonassignedLabels> assignedLabels)
{
	this->assignedLabels = assignedLabels;
}

std::string
Hudson::getMode()
{
	return mode;
}

void
Hudson::setMode(std::string  mode)
{
	this->mode = mode;
}

std::string
Hudson::getNodeDescription()
{
	return nodeDescription;
}

void
Hudson::setNodeDescription(std::string  nodeDescription)
{
	this->nodeDescription = nodeDescription;
}

std::string
Hudson::getNodeName()
{
	return nodeName;
}

void
Hudson::setNodeName(std::string  nodeName)
{
	this->nodeName = nodeName;
}

int
Hudson::getNumExecutors()
{
	return numExecutors;
}

void
Hudson::setNumExecutors(int  numExecutors)
{
	this->numExecutors = numExecutors;
}

std::string
Hudson::getDescription()
{
	return description;
}

void
Hudson::setDescription(std::string  description)
{
	this->description = description;
}

std::list<FreeStyleProject>
Hudson::getJobs()
{
	return jobs;
}

void
Hudson::setJobs(std::list <FreeStyleProject> jobs)
{
	this->jobs = jobs;
}

AllView
Hudson::getPrimaryView()
{
	return primaryView;
}

void
Hudson::setPrimaryView(AllView  primaryView)
{
	this->primaryView = primaryView;
}

bool
Hudson::isQuietingDown()
{
	return quietingDown;
}

void
Hudson::setQuietingDown(bool  quietingDown)
{
	this->quietingDown = quietingDown;
}

int
Hudson::getSlaveAgentPort()
{
	return slaveAgentPort;
}

void
Hudson::setSlaveAgentPort(int  slaveAgentPort)
{
	this->slaveAgentPort = slaveAgentPort;
}

UnlabeledLoadStatistics
Hudson::getUnlabeledLoad()
{
	return unlabeledLoad;
}

void
Hudson::setUnlabeledLoad(UnlabeledLoadStatistics  unlabeledLoad)
{
	this->unlabeledLoad = unlabeledLoad;
}

bool
Hudson::isUseCrumbs()
{
	return useCrumbs;
}

void
Hudson::setUseCrumbs(bool  useCrumbs)
{
	this->useCrumbs = useCrumbs;
}

bool
Hudson::isUseSecurity()
{
	return useSecurity;
}

void
Hudson::setUseSecurity(bool  useSecurity)
{
	this->useSecurity = useSecurity;
}

std::list<AllView>
Hudson::getViews()
{
	return views;
}

void
Hudson::setViews(std::list <AllView> views)
{
	this->views = views;
}



