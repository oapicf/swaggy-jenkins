

#include "FreeStyleProject.h"

using namespace Tiny;

FreeStyleProject::FreeStyleProject()
{
	_class = std::string();
	name = std::string();
	url = std::string();
	color = std::string();
	actions = std::list<FreeStyleProjectactions>();
	description = std::string();
	displayName = std::string();
	displayNameOrNull = std::string();
	fullDisplayName = std::string();
	fullName = std::string();
	buildable = bool(false);
	builds = std::list<FreeStyleBuild>();
	firstBuild = FreeStyleBuild();
	healthReport = std::list<FreeStyleProjecthealthReport>();
	inQueue = bool(false);
	keepDependencies = bool(false);
	lastBuild = FreeStyleBuild();
	lastCompletedBuild = FreeStyleBuild();
	lastFailedBuild = std::string();
	lastStableBuild = FreeStyleBuild();
	lastSuccessfulBuild = FreeStyleBuild();
	lastUnstableBuild = std::string();
	lastUnsuccessfulBuild = std::string();
	nextBuildNumber = int(0);
	queueItem = std::string();
	concurrentBuild = bool(false);
	scm = NullSCM();
}

FreeStyleProject::FreeStyleProject(std::string jsonString)
{
	this->fromJson(jsonString);
}

FreeStyleProject::~FreeStyleProject()
{

}

void
FreeStyleProject::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *nameKey = "name";

    if(object.has_key(nameKey))
    {
        bourne::json value = object[nameKey];



        jsonToValue(&name, value, "std::string");


    }

    const char *urlKey = "url";

    if(object.has_key(urlKey))
    {
        bourne::json value = object[urlKey];



        jsonToValue(&url, value, "std::string");


    }

    const char *colorKey = "color";

    if(object.has_key(colorKey))
    {
        bourne::json value = object[colorKey];



        jsonToValue(&color, value, "std::string");


    }

    const char *actionsKey = "actions";

    if(object.has_key(actionsKey))
    {
        bourne::json value = object[actionsKey];


        std::list<FreeStyleProjectactions> actions_list;
        FreeStyleProjectactions element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            actions_list.push_back(element);
        }
        actions = actions_list;


    }

    const char *descriptionKey = "description";

    if(object.has_key(descriptionKey))
    {
        bourne::json value = object[descriptionKey];



        jsonToValue(&description, value, "std::string");


    }

    const char *displayNameKey = "displayName";

    if(object.has_key(displayNameKey))
    {
        bourne::json value = object[displayNameKey];



        jsonToValue(&displayName, value, "std::string");


    }

    const char *displayNameOrNullKey = "displayNameOrNull";

    if(object.has_key(displayNameOrNullKey))
    {
        bourne::json value = object[displayNameOrNullKey];



        jsonToValue(&displayNameOrNull, value, "std::string");


    }

    const char *fullDisplayNameKey = "fullDisplayName";

    if(object.has_key(fullDisplayNameKey))
    {
        bourne::json value = object[fullDisplayNameKey];



        jsonToValue(&fullDisplayName, value, "std::string");


    }

    const char *fullNameKey = "fullName";

    if(object.has_key(fullNameKey))
    {
        bourne::json value = object[fullNameKey];



        jsonToValue(&fullName, value, "std::string");


    }

    const char *buildableKey = "buildable";

    if(object.has_key(buildableKey))
    {
        bourne::json value = object[buildableKey];



        jsonToValue(&buildable, value, "bool");


    }

    const char *buildsKey = "builds";

    if(object.has_key(buildsKey))
    {
        bourne::json value = object[buildsKey];


        std::list<FreeStyleBuild> builds_list;
        FreeStyleBuild element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            builds_list.push_back(element);
        }
        builds = builds_list;


    }

    const char *firstBuildKey = "firstBuild";

    if(object.has_key(firstBuildKey))
    {
        bourne::json value = object[firstBuildKey];




        FreeStyleBuild* obj = &firstBuild;
		obj->fromJson(value.dump());

    }

    const char *healthReportKey = "healthReport";

    if(object.has_key(healthReportKey))
    {
        bourne::json value = object[healthReportKey];


        std::list<FreeStyleProjecthealthReport> healthReport_list;
        FreeStyleProjecthealthReport element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            healthReport_list.push_back(element);
        }
        healthReport = healthReport_list;


    }

    const char *inQueueKey = "inQueue";

    if(object.has_key(inQueueKey))
    {
        bourne::json value = object[inQueueKey];



        jsonToValue(&inQueue, value, "bool");


    }

    const char *keepDependenciesKey = "keepDependencies";

    if(object.has_key(keepDependenciesKey))
    {
        bourne::json value = object[keepDependenciesKey];



        jsonToValue(&keepDependencies, value, "bool");


    }

    const char *lastBuildKey = "lastBuild";

    if(object.has_key(lastBuildKey))
    {
        bourne::json value = object[lastBuildKey];




        FreeStyleBuild* obj = &lastBuild;
		obj->fromJson(value.dump());

    }

    const char *lastCompletedBuildKey = "lastCompletedBuild";

    if(object.has_key(lastCompletedBuildKey))
    {
        bourne::json value = object[lastCompletedBuildKey];




        FreeStyleBuild* obj = &lastCompletedBuild;
		obj->fromJson(value.dump());

    }

    const char *lastFailedBuildKey = "lastFailedBuild";

    if(object.has_key(lastFailedBuildKey))
    {
        bourne::json value = object[lastFailedBuildKey];



        jsonToValue(&lastFailedBuild, value, "std::string");


    }

    const char *lastStableBuildKey = "lastStableBuild";

    if(object.has_key(lastStableBuildKey))
    {
        bourne::json value = object[lastStableBuildKey];




        FreeStyleBuild* obj = &lastStableBuild;
		obj->fromJson(value.dump());

    }

    const char *lastSuccessfulBuildKey = "lastSuccessfulBuild";

    if(object.has_key(lastSuccessfulBuildKey))
    {
        bourne::json value = object[lastSuccessfulBuildKey];




        FreeStyleBuild* obj = &lastSuccessfulBuild;
		obj->fromJson(value.dump());

    }

    const char *lastUnstableBuildKey = "lastUnstableBuild";

    if(object.has_key(lastUnstableBuildKey))
    {
        bourne::json value = object[lastUnstableBuildKey];



        jsonToValue(&lastUnstableBuild, value, "std::string");


    }

    const char *lastUnsuccessfulBuildKey = "lastUnsuccessfulBuild";

    if(object.has_key(lastUnsuccessfulBuildKey))
    {
        bourne::json value = object[lastUnsuccessfulBuildKey];



        jsonToValue(&lastUnsuccessfulBuild, value, "std::string");


    }

    const char *nextBuildNumberKey = "nextBuildNumber";

    if(object.has_key(nextBuildNumberKey))
    {
        bourne::json value = object[nextBuildNumberKey];



        jsonToValue(&nextBuildNumber, value, "int");


    }

    const char *queueItemKey = "queueItem";

    if(object.has_key(queueItemKey))
    {
        bourne::json value = object[queueItemKey];



        jsonToValue(&queueItem, value, "std::string");


    }

    const char *concurrentBuildKey = "concurrentBuild";

    if(object.has_key(concurrentBuildKey))
    {
        bourne::json value = object[concurrentBuildKey];



        jsonToValue(&concurrentBuild, value, "bool");


    }

    const char *scmKey = "scm";

    if(object.has_key(scmKey))
    {
        bourne::json value = object[scmKey];




        NullSCM* obj = &scm;
		obj->fromJson(value.dump());

    }


}

bourne::json
FreeStyleProject::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["name"] = getName();






    object["url"] = getUrl();






    object["color"] = getColor();





    std::list<FreeStyleProjectactions> actions_list = getActions();
    bourne::json actions_arr = bourne::json::array();

    for(auto& var : actions_list)
    {
        FreeStyleProjectactions obj = var;
        actions_arr.append(obj.toJson());
    }
    object["actions"] = actions_arr;







    object["description"] = getDescription();






    object["displayName"] = getDisplayName();






    object["displayNameOrNull"] = getDisplayNameOrNull();






    object["fullDisplayName"] = getFullDisplayName();






    object["fullName"] = getFullName();






    object["buildable"] = isBuildable();





    std::list<FreeStyleBuild> builds_list = getBuilds();
    bourne::json builds_arr = bourne::json::array();

    for(auto& var : builds_list)
    {
        FreeStyleBuild obj = var;
        builds_arr.append(obj.toJson());
    }
    object["builds"] = builds_arr;








	object["firstBuild"] = getFirstBuild().toJson();




    std::list<FreeStyleProjecthealthReport> healthReport_list = getHealthReport();
    bourne::json healthReport_arr = bourne::json::array();

    for(auto& var : healthReport_list)
    {
        FreeStyleProjecthealthReport obj = var;
        healthReport_arr.append(obj.toJson());
    }
    object["healthReport"] = healthReport_arr;







    object["inQueue"] = isInQueue();






    object["keepDependencies"] = isKeepDependencies();







	object["lastBuild"] = getLastBuild().toJson();






	object["lastCompletedBuild"] = getLastCompletedBuild().toJson();





    object["lastFailedBuild"] = getLastFailedBuild();







	object["lastStableBuild"] = getLastStableBuild().toJson();






	object["lastSuccessfulBuild"] = getLastSuccessfulBuild().toJson();





    object["lastUnstableBuild"] = getLastUnstableBuild();






    object["lastUnsuccessfulBuild"] = getLastUnsuccessfulBuild();






    object["nextBuildNumber"] = getNextBuildNumber();






    object["queueItem"] = getQueueItem();






    object["concurrentBuild"] = isConcurrentBuild();







	object["scm"] = getScm().toJson();


    return object;

}

std::string
FreeStyleProject::getClass()
{
	return _class;
}

void
FreeStyleProject::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
FreeStyleProject::getName()
{
	return name;
}

void
FreeStyleProject::setName(std::string  name)
{
	this->name = name;
}

std::string
FreeStyleProject::getUrl()
{
	return url;
}

void
FreeStyleProject::setUrl(std::string  url)
{
	this->url = url;
}

std::string
FreeStyleProject::getColor()
{
	return color;
}

void
FreeStyleProject::setColor(std::string  color)
{
	this->color = color;
}

std::list<FreeStyleProjectactions>
FreeStyleProject::getActions()
{
	return actions;
}

void
FreeStyleProject::setActions(std::list <FreeStyleProjectactions> actions)
{
	this->actions = actions;
}

std::string
FreeStyleProject::getDescription()
{
	return description;
}

void
FreeStyleProject::setDescription(std::string  description)
{
	this->description = description;
}

std::string
FreeStyleProject::getDisplayName()
{
	return displayName;
}

void
FreeStyleProject::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

std::string
FreeStyleProject::getDisplayNameOrNull()
{
	return displayNameOrNull;
}

void
FreeStyleProject::setDisplayNameOrNull(std::string  displayNameOrNull)
{
	this->displayNameOrNull = displayNameOrNull;
}

std::string
FreeStyleProject::getFullDisplayName()
{
	return fullDisplayName;
}

void
FreeStyleProject::setFullDisplayName(std::string  fullDisplayName)
{
	this->fullDisplayName = fullDisplayName;
}

std::string
FreeStyleProject::getFullName()
{
	return fullName;
}

void
FreeStyleProject::setFullName(std::string  fullName)
{
	this->fullName = fullName;
}

bool
FreeStyleProject::isBuildable()
{
	return buildable;
}

void
FreeStyleProject::setBuildable(bool  buildable)
{
	this->buildable = buildable;
}

std::list<FreeStyleBuild>
FreeStyleProject::getBuilds()
{
	return builds;
}

void
FreeStyleProject::setBuilds(std::list <FreeStyleBuild> builds)
{
	this->builds = builds;
}

FreeStyleBuild
FreeStyleProject::getFirstBuild()
{
	return firstBuild;
}

void
FreeStyleProject::setFirstBuild(FreeStyleBuild  firstBuild)
{
	this->firstBuild = firstBuild;
}

std::list<FreeStyleProjecthealthReport>
FreeStyleProject::getHealthReport()
{
	return healthReport;
}

void
FreeStyleProject::setHealthReport(std::list <FreeStyleProjecthealthReport> healthReport)
{
	this->healthReport = healthReport;
}

bool
FreeStyleProject::isInQueue()
{
	return inQueue;
}

void
FreeStyleProject::setInQueue(bool  inQueue)
{
	this->inQueue = inQueue;
}

bool
FreeStyleProject::isKeepDependencies()
{
	return keepDependencies;
}

void
FreeStyleProject::setKeepDependencies(bool  keepDependencies)
{
	this->keepDependencies = keepDependencies;
}

FreeStyleBuild
FreeStyleProject::getLastBuild()
{
	return lastBuild;
}

void
FreeStyleProject::setLastBuild(FreeStyleBuild  lastBuild)
{
	this->lastBuild = lastBuild;
}

FreeStyleBuild
FreeStyleProject::getLastCompletedBuild()
{
	return lastCompletedBuild;
}

void
FreeStyleProject::setLastCompletedBuild(FreeStyleBuild  lastCompletedBuild)
{
	this->lastCompletedBuild = lastCompletedBuild;
}

std::string
FreeStyleProject::getLastFailedBuild()
{
	return lastFailedBuild;
}

void
FreeStyleProject::setLastFailedBuild(std::string  lastFailedBuild)
{
	this->lastFailedBuild = lastFailedBuild;
}

FreeStyleBuild
FreeStyleProject::getLastStableBuild()
{
	return lastStableBuild;
}

void
FreeStyleProject::setLastStableBuild(FreeStyleBuild  lastStableBuild)
{
	this->lastStableBuild = lastStableBuild;
}

FreeStyleBuild
FreeStyleProject::getLastSuccessfulBuild()
{
	return lastSuccessfulBuild;
}

void
FreeStyleProject::setLastSuccessfulBuild(FreeStyleBuild  lastSuccessfulBuild)
{
	this->lastSuccessfulBuild = lastSuccessfulBuild;
}

std::string
FreeStyleProject::getLastUnstableBuild()
{
	return lastUnstableBuild;
}

void
FreeStyleProject::setLastUnstableBuild(std::string  lastUnstableBuild)
{
	this->lastUnstableBuild = lastUnstableBuild;
}

std::string
FreeStyleProject::getLastUnsuccessfulBuild()
{
	return lastUnsuccessfulBuild;
}

void
FreeStyleProject::setLastUnsuccessfulBuild(std::string  lastUnsuccessfulBuild)
{
	this->lastUnsuccessfulBuild = lastUnsuccessfulBuild;
}

int
FreeStyleProject::getNextBuildNumber()
{
	return nextBuildNumber;
}

void
FreeStyleProject::setNextBuildNumber(int  nextBuildNumber)
{
	this->nextBuildNumber = nextBuildNumber;
}

std::string
FreeStyleProject::getQueueItem()
{
	return queueItem;
}

void
FreeStyleProject::setQueueItem(std::string  queueItem)
{
	this->queueItem = queueItem;
}

bool
FreeStyleProject::isConcurrentBuild()
{
	return concurrentBuild;
}

void
FreeStyleProject::setConcurrentBuild(bool  concurrentBuild)
{
	this->concurrentBuild = concurrentBuild;
}

NullSCM
FreeStyleProject::getScm()
{
	return scm;
}

void
FreeStyleProject::setScm(NullSCM  scm)
{
	this->scm = scm;
}



