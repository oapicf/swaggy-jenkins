package controllers;

import apimodels.DefaultCrumbIssuer;

import play.mvc.Http;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;

import javax.validation.constraints.*;

@SuppressWarnings("RedundantThrows")
public interface BaseRemoteAccessApiControllerImpInterface {
    DefaultCrumbIssuer getCrumb() throws Exception;

}
