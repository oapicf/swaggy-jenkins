package org.openapitools.api.provider;

import org.openapitools.model.BranchImpl;
import org.openapitools.model.FavoriteImpl;
import org.openapitools.model.GithubOrganization;
import org.openapitools.model.GithubScm;
import org.openapitools.model.MultibranchPipeline;
import org.openapitools.model.Organisation;
import org.openapitools.model.Pipeline;
import org.openapitools.model.PipelineActivity;
import org.openapitools.model.PipelineFolderImpl;
import org.openapitools.model.PipelineImpl;
import org.openapitools.model.PipelineRun;
import org.openapitools.model.PipelineRunNode;
import org.openapitools.model.PipelineStepImpl;
import org.openapitools.model.QueueItemImpl;
import org.openapitools.model.User;
import org.openapitools.model.*;
import org.openapitools.api.interfaces.BlueService;
import java.util.List;
import java.util.Map;
import java.time.OffsetDateTime;
import java.time.LocalDate;
import java.time.LocalDateTime;
import org.apache.dubbo.config.annotation.DubboService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import javax.annotation.Generated;


@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

@DubboService
public class BlueServiceImpl implements BlueService {

    private static final Logger logger = LoggerFactory.getLogger(BlueServiceImpl.class);

    @Override
    public void deletePipelineQueueItem(
        String organization,
        String pipeline,
        String queue
    ) {
        logger.info("Dubbo service method deletePipelineQueueItem called with parameters: organization={}, pipeline={}, queue={}", organization, pipeline, queue);
        
        // TODO: Implement your business logic here
    }

    @Override
    public User getAuthenticatedUser(
        String organization
    ) {
        logger.info("Dubbo service method getAuthenticatedUser called with parameters: organization={}", organization);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public String getClasses(
        String propertyClass
    ) {
        logger.info("Dubbo service method getClasses called with parameters: propertyClass={}", propertyClass);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public Organisation getOrganisation(
        String organization
    ) {
        logger.info("Dubbo service method getOrganisation called with parameters: organization={}", organization);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public List<Organisation> getOrganisations(
    ) {
        logger.info("Dubbo service method getOrganisations called with parameters: ");
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public Pipeline getPipeline(
        String organization,
        String pipeline
    ) {
        logger.info("Dubbo service method getPipeline called with parameters: organization={}, pipeline={}", organization, pipeline);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public List<PipelineActivity> getPipelineActivities(
        String organization,
        String pipeline
    ) {
        logger.info("Dubbo service method getPipelineActivities called with parameters: organization={}, pipeline={}", organization, pipeline);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public BranchImpl getPipelineBranch(
        String organization,
        String pipeline,
        String branch
    ) {
        logger.info("Dubbo service method getPipelineBranch called with parameters: organization={}, pipeline={}, branch={}", organization, pipeline, branch);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public PipelineRun getPipelineBranchRun(
        String organization,
        String pipeline,
        String branch,
        String run
    ) {
        logger.info("Dubbo service method getPipelineBranchRun called with parameters: organization={}, pipeline={}, branch={}, run={}", organization, pipeline, branch, run);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public MultibranchPipeline getPipelineBranches(
        String organization,
        String pipeline
    ) {
        logger.info("Dubbo service method getPipelineBranches called with parameters: organization={}, pipeline={}", organization, pipeline);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public PipelineFolderImpl getPipelineFolder(
        String organization,
        String folder
    ) {
        logger.info("Dubbo service method getPipelineFolder called with parameters: organization={}, folder={}", organization, folder);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public PipelineImpl getPipelineFolderPipeline(
        String organization,
        String pipeline,
        String folder
    ) {
        logger.info("Dubbo service method getPipelineFolderPipeline called with parameters: organization={}, pipeline={}, folder={}", organization, pipeline, folder);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public List<QueueItemImpl> getPipelineQueue(
        String organization,
        String pipeline
    ) {
        logger.info("Dubbo service method getPipelineQueue called with parameters: organization={}, pipeline={}", organization, pipeline);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public PipelineRun getPipelineRun(
        String organization,
        String pipeline,
        String run
    ) {
        logger.info("Dubbo service method getPipelineRun called with parameters: organization={}, pipeline={}, run={}", organization, pipeline, run);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public String getPipelineRunLog(
        String organization,
        String pipeline,
        String run,
        Integer start,
        Boolean download
    ) {
        logger.info("Dubbo service method getPipelineRunLog called with parameters: organization={}, pipeline={}, run={}, start={}, download={}", organization, pipeline, run, start, download);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public PipelineRunNode getPipelineRunNode(
        String organization,
        String pipeline,
        String run,
        String node
    ) {
        logger.info("Dubbo service method getPipelineRunNode called with parameters: organization={}, pipeline={}, run={}, node={}", organization, pipeline, run, node);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public PipelineStepImpl getPipelineRunNodeStep(
        String organization,
        String pipeline,
        String run,
        String node,
        String step
    ) {
        logger.info("Dubbo service method getPipelineRunNodeStep called with parameters: organization={}, pipeline={}, run={}, node={}, step={}", organization, pipeline, run, node, step);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public String getPipelineRunNodeStepLog(
        String organization,
        String pipeline,
        String run,
        String node,
        String step
    ) {
        logger.info("Dubbo service method getPipelineRunNodeStepLog called with parameters: organization={}, pipeline={}, run={}, node={}, step={}", organization, pipeline, run, node, step);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public List<PipelineStepImpl> getPipelineRunNodeSteps(
        String organization,
        String pipeline,
        String run,
        String node
    ) {
        logger.info("Dubbo service method getPipelineRunNodeSteps called with parameters: organization={}, pipeline={}, run={}, node={}", organization, pipeline, run, node);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public List<PipelineRunNode> getPipelineRunNodes(
        String organization,
        String pipeline,
        String run
    ) {
        logger.info("Dubbo service method getPipelineRunNodes called with parameters: organization={}, pipeline={}, run={}", organization, pipeline, run);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public List<PipelineRun> getPipelineRuns(
        String organization,
        String pipeline
    ) {
        logger.info("Dubbo service method getPipelineRuns called with parameters: organization={}, pipeline={}", organization, pipeline);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public List<Pipeline> getPipelines(
        String organization
    ) {
        logger.info("Dubbo service method getPipelines called with parameters: organization={}", organization);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public GithubScm getSCM(
        String organization,
        String scm
    ) {
        logger.info("Dubbo service method getSCM called with parameters: organization={}, scm={}", organization, scm);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public List<GithubOrganization> getSCMOrganisationRepositories(
        String organization,
        String scm,
        String scmOrganisation,
        String credentialId,
        Integer pageSize,
        Integer pageNumber
    ) {
        logger.info("Dubbo service method getSCMOrganisationRepositories called with parameters: organization={}, scm={}, scmOrganisation={}, credentialId={}, pageSize={}, pageNumber={}", organization, scm, scmOrganisation, credentialId, pageSize, pageNumber);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public List<GithubOrganization> getSCMOrganisationRepository(
        String organization,
        String scm,
        String scmOrganisation,
        String repository,
        String credentialId
    ) {
        logger.info("Dubbo service method getSCMOrganisationRepository called with parameters: organization={}, scm={}, scmOrganisation={}, repository={}, credentialId={}", organization, scm, scmOrganisation, repository, credentialId);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public List<GithubOrganization> getSCMOrganisations(
        String organization,
        String scm,
        String credentialId
    ) {
        logger.info("Dubbo service method getSCMOrganisations called with parameters: organization={}, scm={}, credentialId={}", organization, scm, credentialId);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public User getUser(
        String organization,
        String user
    ) {
        logger.info("Dubbo service method getUser called with parameters: organization={}, user={}", organization, user);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public List<FavoriteImpl> getUserFavorites(
        String user
    ) {
        logger.info("Dubbo service method getUserFavorites called with parameters: user={}", user);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public User getUsers(
        String organization
    ) {
        logger.info("Dubbo service method getUsers called with parameters: organization={}", organization);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public QueueItemImpl postPipelineRun(
        String organization,
        String pipeline,
        String run
    ) {
        logger.info("Dubbo service method postPipelineRun called with parameters: organization={}, pipeline={}, run={}", organization, pipeline, run);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public QueueItemImpl postPipelineRuns(
        String organization,
        String pipeline
    ) {
        logger.info("Dubbo service method postPipelineRuns called with parameters: organization={}, pipeline={}", organization, pipeline);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public FavoriteImpl putPipelineFavorite(
        String organization,
        String pipeline,
        Boolean body
    ) {
        logger.info("Dubbo service method putPipelineFavorite called with parameters: organization={}, pipeline={}, body={}", organization, pipeline, body);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public PipelineRun putPipelineRun(
        String organization,
        String pipeline,
        String run,
        String blocking,
        Integer timeOutInSecs
    ) {
        logger.info("Dubbo service method putPipelineRun called with parameters: organization={}, pipeline={}, run={}, blocking={}, timeOutInSecs={}", organization, pipeline, run, blocking, timeOutInSecs);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public String search(
        String q
    ) {
        logger.info("Dubbo service method search called with parameters: q={}", q);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public String searchClasses(
        String q
    ) {
        logger.info("Dubbo service method searchClasses called with parameters: q={}", q);
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }
}
