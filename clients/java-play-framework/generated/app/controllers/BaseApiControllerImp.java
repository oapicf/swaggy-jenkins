package controllers;

import apimodels.DefaultCrumbIssuer;

import play.mvc.Http;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.io.FileInputStream;
import play.libs.Files.TemporaryFile;
import javax.validation.constraints.*;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2022-06-04T08:08:33.694891Z[Etc/UTC]")
public class BaseApiControllerImp extends BaseApiControllerImpInterface {
    @Override
    public DefaultCrumbIssuer getCrumb(Http.Request request) throws Exception {
        //Do your magic!!!
        return new DefaultCrumbIssuer();
    }

}
