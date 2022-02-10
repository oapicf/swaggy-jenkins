

#include "ExtensionClassContainerImpl1map.h"

using namespace Tiny;

ExtensionClassContainerImpl1map::ExtensionClassContainerImpl1map()
{
	iojenkinsblueoceanserviceembeddedrestPipelineImpl = ExtensionClassImpl();
	iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl = ExtensionClassImpl();
	_class = std::string();
}

ExtensionClassContainerImpl1map::ExtensionClassContainerImpl1map(std::string jsonString)
{
	this->fromJson(jsonString);
}

ExtensionClassContainerImpl1map::~ExtensionClassContainerImpl1map()
{

}

void
ExtensionClassContainerImpl1map::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *iojenkinsblueoceanserviceembeddedrestPipelineImplKey = "io.jenkins.blueocean.service.embedded.rest.PipelineImpl";

    if(object.has_key(iojenkinsblueoceanserviceembeddedrestPipelineImplKey))
    {
        bourne::json value = object[iojenkinsblueoceanserviceembeddedrestPipelineImplKey];




        ExtensionClassImpl* obj = &iojenkinsblueoceanserviceembeddedrestPipelineImpl;
		obj->fromJson(value.dump());

    }

    const char *iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImplKey = "io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl";

    if(object.has_key(iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImplKey))
    {
        bourne::json value = object[iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImplKey];




        ExtensionClassImpl* obj = &iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl;
		obj->fromJson(value.dump());

    }

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
ExtensionClassContainerImpl1map::toJson()
{
    bourne::json object = bourne::json::object();






	object["iojenkinsblueoceanserviceembeddedrestPipelineImpl"] = getIojenkinsblueoceanserviceembeddedrestPipelineImpl().toJson();






	object["iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl"] = getIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl().toJson();





    object["_class"] = getClass();



    return object;

}

ExtensionClassImpl
ExtensionClassContainerImpl1map::getIojenkinsblueoceanserviceembeddedrestPipelineImpl()
{
	return iojenkinsblueoceanserviceembeddedrestPipelineImpl;
}

void
ExtensionClassContainerImpl1map::setIojenkinsblueoceanserviceembeddedrestPipelineImpl(ExtensionClassImpl  iojenkinsblueoceanserviceembeddedrestPipelineImpl)
{
	this->iojenkinsblueoceanserviceembeddedrestPipelineImpl = iojenkinsblueoceanserviceembeddedrestPipelineImpl;
}

ExtensionClassImpl
ExtensionClassContainerImpl1map::getIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl()
{
	return iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl;
}

void
ExtensionClassContainerImpl1map::setIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl(ExtensionClassImpl  iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl)
{
	this->iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl = iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl;
}

std::string
ExtensionClassContainerImpl1map::getClass()
{
	return _class;
}

void
ExtensionClassContainerImpl1map::setClass(std::string  _class)
{
	this->_class = _class;
}



