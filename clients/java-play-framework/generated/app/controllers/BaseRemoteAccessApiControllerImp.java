package controllers;

import apimodels.DefaultCrumbIssuer;

import play.mvc.Http;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.io.FileInputStream;
import javax.validation.constraints.*;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2019-04-09T15:08:36.893Z[GMT]")

public class BaseRemoteAccessApiControllerImp implements BaseRemoteAccessApiControllerImpInterface {
    @Override
    public DefaultCrumbIssuer getCrumb() throws Exception {
        //Do your magic!!!
        return new DefaultCrumbIssuer();
    }

}
