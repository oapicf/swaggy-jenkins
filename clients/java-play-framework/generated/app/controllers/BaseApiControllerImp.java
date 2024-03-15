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
import javax.validation.Valid;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2024-03-15T14:12:54.149422212Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class BaseApiControllerImp extends BaseApiControllerImpInterface {
    @Override
    public DefaultCrumbIssuer getCrumb(Http.Request request) throws Exception {
        //Do your magic!!!
        return new DefaultCrumbIssuer();
    }

}
