package org.openapitools.server.api.verticle;

import org.openapitools.server.api.model.ComputerSet;
import org.openapitools.server.api.model.FreeStyleBuild;
import org.openapitools.server.api.model.FreeStyleProject;
import org.openapitools.server.api.model.Hudson;
import org.openapitools.server.api.model.ListView;
import org.openapitools.server.api.MainApiException;
import org.openapitools.server.api.model.Queue;

public final class RemoteAccessApiException extends MainApiException {
    public RemoteAccessApiException(int statusCode, String statusMessage) {
        super(statusCode, statusMessage);
    }

    public static final RemoteAccessApiException RemoteAccess_getComputer_200_Exception = new RemoteAccessApiException(200, "Successfully retrieved computer details");
    public static final RemoteAccessApiException RemoteAccess_getComputer_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_getComputer_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_getJenkins_200_Exception = new RemoteAccessApiException(200, "Successfully retrieved Jenkins details");
    public static final RemoteAccessApiException RemoteAccess_getJenkins_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_getJenkins_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_getJob_200_Exception = new RemoteAccessApiException(200, "Successfully retrieved job details");
    public static final RemoteAccessApiException RemoteAccess_getJob_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_getJob_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_getJob_404_Exception = new RemoteAccessApiException(404, "Job cannot be found on Jenkins instance");
    public static final RemoteAccessApiException RemoteAccess_getJobConfig_200_Exception = new RemoteAccessApiException(200, "Successfully retrieved job configuration in config.xml format");
    public static final RemoteAccessApiException RemoteAccess_getJobConfig_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_getJobConfig_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_getJobConfig_404_Exception = new RemoteAccessApiException(404, "Job cannot be found on Jenkins instance");
    public static final RemoteAccessApiException RemoteAccess_getJobLastBuild_200_Exception = new RemoteAccessApiException(200, "Successfully retrieved job's last build details");
    public static final RemoteAccessApiException RemoteAccess_getJobLastBuild_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_getJobLastBuild_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_getJobLastBuild_404_Exception = new RemoteAccessApiException(404, "Job cannot be found on Jenkins instance");
    public static final RemoteAccessApiException RemoteAccess_getJobProgressiveText_200_Exception = new RemoteAccessApiException(200, "Successfully retrieved job's build progressive text output");
    public static final RemoteAccessApiException RemoteAccess_getJobProgressiveText_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_getJobProgressiveText_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_getJobProgressiveText_404_Exception = new RemoteAccessApiException(404, "Job cannot be found on Jenkins instance");
    public static final RemoteAccessApiException RemoteAccess_getQueue_200_Exception = new RemoteAccessApiException(200, "Successfully retrieved queue details");
    public static final RemoteAccessApiException RemoteAccess_getQueue_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_getQueue_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_getQueueItem_200_Exception = new RemoteAccessApiException(200, "Successfully retrieved queued item details");
    public static final RemoteAccessApiException RemoteAccess_getQueueItem_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_getQueueItem_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_getView_200_Exception = new RemoteAccessApiException(200, "Successfully retrieved view details");
    public static final RemoteAccessApiException RemoteAccess_getView_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_getView_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_getView_404_Exception = new RemoteAccessApiException(404, "View cannot be found on Jenkins instance");
    public static final RemoteAccessApiException RemoteAccess_getViewConfig_200_Exception = new RemoteAccessApiException(200, "Successfully retrieved view configuration in config.xml format");
    public static final RemoteAccessApiException RemoteAccess_getViewConfig_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_getViewConfig_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_getViewConfig_404_Exception = new RemoteAccessApiException(404, "View cannot be found on Jenkins instance");
    public static final RemoteAccessApiException RemoteAccess_headJenkins_200_Exception = new RemoteAccessApiException(200, "Successfully retrieved Jenkins headers");
    public static final RemoteAccessApiException RemoteAccess_headJenkins_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_headJenkins_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_postCreateItem_200_Exception = new RemoteAccessApiException(200, "Successfully created a new job");
    public static final RemoteAccessApiException RemoteAccess_postCreateItem_400_Exception = new RemoteAccessApiException(400, "An error has occurred - error message is embedded inside the HTML response");
    public static final RemoteAccessApiException RemoteAccess_postCreateItem_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_postCreateItem_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_postCreateView_200_Exception = new RemoteAccessApiException(200, "Successfully created the view");
    public static final RemoteAccessApiException RemoteAccess_postCreateView_400_Exception = new RemoteAccessApiException(400, "An error has occurred - error message is embedded inside the HTML response");
    public static final RemoteAccessApiException RemoteAccess_postCreateView_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_postCreateView_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_postJobBuild_200_Exception = new RemoteAccessApiException(200, "Successfully built the job (backward compatibility for older versions of Jenkins)");
    public static final RemoteAccessApiException RemoteAccess_postJobBuild_201_Exception = new RemoteAccessApiException(201, "Successfully built the job");
    public static final RemoteAccessApiException RemoteAccess_postJobBuild_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_postJobBuild_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_postJobBuild_404_Exception = new RemoteAccessApiException(404, "Job cannot be found on Jenkins instance");
    public static final RemoteAccessApiException RemoteAccess_postJobConfig_200_Exception = new RemoteAccessApiException(200, "Successfully retrieved job configuration in config.xml format");
    public static final RemoteAccessApiException RemoteAccess_postJobConfig_400_Exception = new RemoteAccessApiException(400, "An error has occurred - error message is embedded inside the HTML response");
    public static final RemoteAccessApiException RemoteAccess_postJobConfig_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_postJobConfig_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_postJobConfig_404_Exception = new RemoteAccessApiException(404, "Job cannot be found on Jenkins instance");
    public static final RemoteAccessApiException RemoteAccess_postJobDelete_200_Exception = new RemoteAccessApiException(200, "Successfully deleted the job");
    public static final RemoteAccessApiException RemoteAccess_postJobDelete_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_postJobDelete_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_postJobDelete_404_Exception = new RemoteAccessApiException(404, "Job cannot be found on Jenkins instance");
    public static final RemoteAccessApiException RemoteAccess_postJobDisable_200_Exception = new RemoteAccessApiException(200, "Successfully disabled the job");
    public static final RemoteAccessApiException RemoteAccess_postJobDisable_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_postJobDisable_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_postJobDisable_404_Exception = new RemoteAccessApiException(404, "Job cannot be found on Jenkins instance");
    public static final RemoteAccessApiException RemoteAccess_postJobEnable_200_Exception = new RemoteAccessApiException(200, "Successfully enabled the job");
    public static final RemoteAccessApiException RemoteAccess_postJobEnable_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_postJobEnable_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_postJobEnable_404_Exception = new RemoteAccessApiException(404, "Job cannot be found on Jenkins instance");
    public static final RemoteAccessApiException RemoteAccess_postJobLastBuildStop_200_Exception = new RemoteAccessApiException(200, "Successfully stopped the job");
    public static final RemoteAccessApiException RemoteAccess_postJobLastBuildStop_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_postJobLastBuildStop_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_postJobLastBuildStop_404_Exception = new RemoteAccessApiException(404, "Job cannot be found on Jenkins instance");
    public static final RemoteAccessApiException RemoteAccess_postViewConfig_200_Exception = new RemoteAccessApiException(200, "Successfully updated view configuration");
    public static final RemoteAccessApiException RemoteAccess_postViewConfig_400_Exception = new RemoteAccessApiException(400, "An error has occurred - error message is embedded inside the HTML response");
    public static final RemoteAccessApiException RemoteAccess_postViewConfig_401_Exception = new RemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final RemoteAccessApiException RemoteAccess_postViewConfig_403_Exception = new RemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    public static final RemoteAccessApiException RemoteAccess_postViewConfig_404_Exception = new RemoteAccessApiException(404, "View cannot be found on Jenkins instance");
    

}