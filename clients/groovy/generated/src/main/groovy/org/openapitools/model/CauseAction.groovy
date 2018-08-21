package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.CauseUserIdCause;

@Canonical
class CauseAction {
    String propertyClass = null

    List<CauseUserIdCause> causes = new ArrayList<CauseUserIdCause>()

}
