package org.openapitools.apis

import org.openapitools.apis.path._
import org.openapitools.apis.query._

import org.openapitools.models.BranchImpl
import org.openapitools.models.FavoriteImpl
import org.openapitools.models.GithubOrganization
import org.openapitools.models.GithubScm
import org.openapitools.models.MultibranchPipeline
import org.openapitools.models.Organisation
import org.openapitools.models.Pipeline
import org.openapitools.models.PipelineActivity
import org.openapitools.models.PipelineFolderImpl
import org.openapitools.models.PipelineImpl
import org.openapitools.models.PipelineRun
import org.openapitools.models.PipelineRunNode
import org.openapitools.models.PipelineStepImpl
import org.openapitools.models.QueueItemImpl
import org.openapitools.models.User


import cats.Monad
import cats.syntax.all._

import org.http4s._
import org.http4s.circe._
import org.http4s.server._
import org.http4s.headers._
import org.http4s.dsl.Http4sDsl
import org.http4s.circe.CirceEntityEncoder._

final case class BlueOceanApiRoutes[
  F[_]: JsonDecoder: Monad, jenkins_auth
](delegate: BlueOceanApiDelegate[F, jenkins_auth]) extends Http4sDsl[F] {
  object deletePipelineQueueItem {
    import BlueOceanApiDelegate.deletePipelineQueueItemResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ DELETE -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "queue" / queue) as auth =>
        delegate.deletePipelineQueueItem.handle_jenkins_auth(auth, req, organization, pipeline, queue, responses)

    }

    val responses: deletePipelineQueueItemResponses[F] = new deletePipelineQueueItemResponses[F] {
      def resp200(): F[Response[F]] = Ok()
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getAuthenticatedUser {
    import BlueOceanApiDelegate.getAuthenticatedUserResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "user") as auth =>
        delegate.getAuthenticatedUser.handle_jenkins_auth(auth, req, organization, responses)

    }

    val responses: getAuthenticatedUserResponses[F] = new getAuthenticatedUserResponses[F] {
      def resp200(value: User): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getClasses {
    import BlueOceanApiDelegate.getClassesResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "classes" / _class) as auth =>
        delegate.getClasses.handle_jenkins_auth(auth, req, _class, responses)

    }

    val responses: getClassesResponses[F] = new getClassesResponses[F] {
      def resp200(value: String): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getJsonWebKey {
    import BlueOceanApiDelegate.getJsonWebKeyResponses


    val route = HttpRoutes.of[F] {
      case req @ GET -> Root / "jwt-auth" / "jwks" / IntVarr(key) =>
        delegate.getJsonWebKey.handle(req, key, responses)

    }


    val responses: getJsonWebKeyResponses[F] = new getJsonWebKeyResponses[F] {
      def resp200(value: String): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getJsonWebToken {
    import BlueOceanApiDelegate.getJsonWebTokenResponses

    object expiryTimeInMinsQueryParam extends OptionalQueryParamDecoderMatcher[Int]("expiryTimeInMins")
    object maxExpiryTimeInMinsQueryParam extends OptionalQueryParamDecoderMatcher[Int]("maxExpiryTimeInMins")

    val route = HttpRoutes.of[F] {
      case req @ GET -> Root / "jwt-auth" / "token" :? expiryTimeInMinsQueryParam(expiryTimeInMins) +& maxExpiryTimeInMinsQueryParam(maxExpiryTimeInMins) =>
        delegate.getJsonWebToken.handle(req, expiryTimeInMins, maxExpiryTimeInMins, responses)

    }


    val responses: getJsonWebTokenResponses[F] = new getJsonWebTokenResponses[F] {
      def resp200(value: String): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getOrganisation {
    import BlueOceanApiDelegate.getOrganisationResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization) as auth =>
        delegate.getOrganisation.handle_jenkins_auth(auth, req, organization, responses)

    }

    val responses: getOrganisationResponses[F] = new getOrganisationResponses[F] {
      def resp200(value: Organisation): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
      def resp404(): F[Response[F]] = NotFound()
    }
  }
  object getOrganisations {
    import BlueOceanApiDelegate.getOrganisationsResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations") as auth =>
        delegate.getOrganisations.handle_jenkins_auth(auth, req, responses)

    }

    val responses: getOrganisationsResponses[F] = new getOrganisationsResponses[F] {
      def resp200(value: List[Organisation]): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getPipeline {
    import BlueOceanApiDelegate.getPipelineResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline) as auth =>
        delegate.getPipeline.handle_jenkins_auth(auth, req, organization, pipeline, responses)

    }

    val responses: getPipelineResponses[F] = new getPipelineResponses[F] {
      def resp200(value: Pipeline): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
      def resp404(): F[Response[F]] = NotFound()
    }
  }
  object getPipelineActivities {
    import BlueOceanApiDelegate.getPipelineActivitiesResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "activities") as auth =>
        delegate.getPipelineActivities.handle_jenkins_auth(auth, req, organization, pipeline, responses)

    }

    val responses: getPipelineActivitiesResponses[F] = new getPipelineActivitiesResponses[F] {
      def resp200(value: List[PipelineActivity]): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getPipelineBranch {
    import BlueOceanApiDelegate.getPipelineBranchResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "branches" / branch) as auth =>
        delegate.getPipelineBranch.handle_jenkins_auth(auth, req, organization, pipeline, branch, responses)

    }

    val responses: getPipelineBranchResponses[F] = new getPipelineBranchResponses[F] {
      def resp200(value: BranchImpl): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getPipelineBranchRun {
    import BlueOceanApiDelegate.getPipelineBranchRunResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "branches" / branch / "runs" / run) as auth =>
        delegate.getPipelineBranchRun.handle_jenkins_auth(auth, req, organization, pipeline, branch, run, responses)

    }

    val responses: getPipelineBranchRunResponses[F] = new getPipelineBranchRunResponses[F] {
      def resp200(value: PipelineRun): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getPipelineBranches {
    import BlueOceanApiDelegate.getPipelineBranchesResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "branches") as auth =>
        delegate.getPipelineBranches.handle_jenkins_auth(auth, req, organization, pipeline, responses)

    }

    val responses: getPipelineBranchesResponses[F] = new getPipelineBranchesResponses[F] {
      def resp200(value: MultibranchPipeline): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getPipelineFolder {
    import BlueOceanApiDelegate.getPipelineFolderResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / folder) as auth =>
        delegate.getPipelineFolder.handle_jenkins_auth(auth, req, organization, folder, responses)

    }

    val responses: getPipelineFolderResponses[F] = new getPipelineFolderResponses[F] {
      def resp200(value: PipelineFolderImpl): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getPipelineFolderPipeline {
    import BlueOceanApiDelegate.getPipelineFolderPipelineResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "pipelines" / folder) as auth =>
        delegate.getPipelineFolderPipeline.handle_jenkins_auth(auth, req, organization, pipeline, folder, responses)

    }

    val responses: getPipelineFolderPipelineResponses[F] = new getPipelineFolderPipelineResponses[F] {
      def resp200(value: PipelineImpl): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getPipelineQueue {
    import BlueOceanApiDelegate.getPipelineQueueResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "queue") as auth =>
        delegate.getPipelineQueue.handle_jenkins_auth(auth, req, organization, pipeline, responses)

    }

    val responses: getPipelineQueueResponses[F] = new getPipelineQueueResponses[F] {
      def resp200(value: List[QueueItemImpl]): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getPipelineRun {
    import BlueOceanApiDelegate.getPipelineRunResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "runs" / run) as auth =>
        delegate.getPipelineRun.handle_jenkins_auth(auth, req, organization, pipeline, run, responses)

    }

    val responses: getPipelineRunResponses[F] = new getPipelineRunResponses[F] {
      def resp200(value: PipelineRun): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getPipelineRunLog {
    import BlueOceanApiDelegate.getPipelineRunLogResponses

    object startQueryParam extends OptionalQueryParamDecoderMatcher[Int]("start")
    object downloadQueryParam extends OptionalQueryParamDecoderMatcher[Boolean]("download")

    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "runs" / run / "log" :? startQueryParam(start) +& downloadQueryParam(download)) as auth =>
        delegate.getPipelineRunLog.handle_jenkins_auth(auth, req, organization, pipeline, run, start, download, responses)

    }

    val responses: getPipelineRunLogResponses[F] = new getPipelineRunLogResponses[F] {
      def resp200(value: String): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getPipelineRunNode {
    import BlueOceanApiDelegate.getPipelineRunNodeResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "runs" / run / "nodes" / node) as auth =>
        delegate.getPipelineRunNode.handle_jenkins_auth(auth, req, organization, pipeline, run, node, responses)

    }

    val responses: getPipelineRunNodeResponses[F] = new getPipelineRunNodeResponses[F] {
      def resp200(value: PipelineRunNode): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getPipelineRunNodeStep {
    import BlueOceanApiDelegate.getPipelineRunNodeStepResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "runs" / run / "nodes" / node / "steps" / step) as auth =>
        delegate.getPipelineRunNodeStep.handle_jenkins_auth(auth, req, organization, pipeline, run, node, step, responses)

    }

    val responses: getPipelineRunNodeStepResponses[F] = new getPipelineRunNodeStepResponses[F] {
      def resp200(value: PipelineStepImpl): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getPipelineRunNodeStepLog {
    import BlueOceanApiDelegate.getPipelineRunNodeStepLogResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "runs" / run / "nodes" / node / "steps" / step / "log") as auth =>
        delegate.getPipelineRunNodeStepLog.handle_jenkins_auth(auth, req, organization, pipeline, run, node, step, responses)

    }

    val responses: getPipelineRunNodeStepLogResponses[F] = new getPipelineRunNodeStepLogResponses[F] {
      def resp200(value: String): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getPipelineRunNodeSteps {
    import BlueOceanApiDelegate.getPipelineRunNodeStepsResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "runs" / run / "nodes" / node / "steps") as auth =>
        delegate.getPipelineRunNodeSteps.handle_jenkins_auth(auth, req, organization, pipeline, run, node, responses)

    }

    val responses: getPipelineRunNodeStepsResponses[F] = new getPipelineRunNodeStepsResponses[F] {
      def resp200(value: List[PipelineStepImpl]): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getPipelineRunNodes {
    import BlueOceanApiDelegate.getPipelineRunNodesResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "runs" / run / "nodes") as auth =>
        delegate.getPipelineRunNodes.handle_jenkins_auth(auth, req, organization, pipeline, run, responses)

    }

    val responses: getPipelineRunNodesResponses[F] = new getPipelineRunNodesResponses[F] {
      def resp200(value: List[PipelineRunNode]): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getPipelineRuns {
    import BlueOceanApiDelegate.getPipelineRunsResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "runs") as auth =>
        delegate.getPipelineRuns.handle_jenkins_auth(auth, req, organization, pipeline, responses)

    }

    val responses: getPipelineRunsResponses[F] = new getPipelineRunsResponses[F] {
      def resp200(value: List[PipelineRun]): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getPipelines {
    import BlueOceanApiDelegate.getPipelinesResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "pipelines") as auth =>
        delegate.getPipelines.handle_jenkins_auth(auth, req, organization, responses)

    }

    val responses: getPipelinesResponses[F] = new getPipelinesResponses[F] {
      def resp200(value: List[Pipeline]): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getSCM {
    import BlueOceanApiDelegate.getSCMResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "scm" / scm) as auth =>
        delegate.getSCM.handle_jenkins_auth(auth, req, organization, scm, responses)

    }

    val responses: getSCMResponses[F] = new getSCMResponses[F] {
      def resp200(value: GithubScm): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getSCMOrganisationRepositories {
    import BlueOceanApiDelegate.getSCMOrganisationRepositoriesResponses

    object credentialIdQueryParam extends OptionalQueryParamDecoderMatcher[String]("credentialId")
    object pageSizeQueryParam extends OptionalQueryParamDecoderMatcher[Int]("pageSize")
    object pageNumberQueryParam extends OptionalQueryParamDecoderMatcher[Int]("pageNumber")

    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "scm" / scm / "organizations" / scmOrganisation / "repositories" :? credentialIdQueryParam(credentialId) +& pageSizeQueryParam(pageSize) +& pageNumberQueryParam(pageNumber)) as auth =>
        delegate.getSCMOrganisationRepositories.handle_jenkins_auth(auth, req, organization, scm, scmOrganisation, credentialId, pageSize, pageNumber, responses)

    }

    val responses: getSCMOrganisationRepositoriesResponses[F] = new getSCMOrganisationRepositoriesResponses[F] {
      def resp200(value: List[GithubOrganization]): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getSCMOrganisationRepository {
    import BlueOceanApiDelegate.getSCMOrganisationRepositoryResponses

    object credentialIdQueryParam extends OptionalQueryParamDecoderMatcher[String]("credentialId")

    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "scm" / scm / "organizations" / scmOrganisation / "repositories" / repository :? credentialIdQueryParam(credentialId)) as auth =>
        delegate.getSCMOrganisationRepository.handle_jenkins_auth(auth, req, organization, scm, scmOrganisation, repository, credentialId, responses)

    }

    val responses: getSCMOrganisationRepositoryResponses[F] = new getSCMOrganisationRepositoryResponses[F] {
      def resp200(value: List[GithubOrganization]): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getSCMOrganisations {
    import BlueOceanApiDelegate.getSCMOrganisationsResponses

    object credentialIdQueryParam extends OptionalQueryParamDecoderMatcher[String]("credentialId")

    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "scm" / scm / "organizations" :? credentialIdQueryParam(credentialId)) as auth =>
        delegate.getSCMOrganisations.handle_jenkins_auth(auth, req, organization, scm, credentialId, responses)

    }

    val responses: getSCMOrganisationsResponses[F] = new getSCMOrganisationsResponses[F] {
      def resp200(value: List[GithubOrganization]): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getUser {
    import BlueOceanApiDelegate.getUserResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "users" / user) as auth =>
        delegate.getUser.handle_jenkins_auth(auth, req, organization, user, responses)

    }

    val responses: getUserResponses[F] = new getUserResponses[F] {
      def resp200(value: User): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getUserFavorites {
    import BlueOceanApiDelegate.getUserFavoritesResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "users" / user / "favorites") as auth =>
        delegate.getUserFavorites.handle_jenkins_auth(auth, req, user, responses)

    }

    val responses: getUserFavoritesResponses[F] = new getUserFavoritesResponses[F] {
      def resp200(value: List[FavoriteImpl]): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getUsers {
    import BlueOceanApiDelegate.getUsersResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "organizations" / organization / "users") as auth =>
        delegate.getUsers.handle_jenkins_auth(auth, req, organization, responses)

    }

    val responses: getUsersResponses[F] = new getUsersResponses[F] {
      def resp200(value: User): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object postPipelineRun {
    import BlueOceanApiDelegate.postPipelineRunResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ POST -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "runs" / run / "replay") as auth =>
        delegate.postPipelineRun.handle_jenkins_auth(auth, req, organization, pipeline, run, responses)

    }

    val responses: postPipelineRunResponses[F] = new postPipelineRunResponses[F] {
      def resp200(value: QueueItemImpl): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object postPipelineRuns {
    import BlueOceanApiDelegate.postPipelineRunsResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ POST -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "runs") as auth =>
        delegate.postPipelineRuns.handle_jenkins_auth(auth, req, organization, pipeline, responses)

    }

    val responses: postPipelineRunsResponses[F] = new postPipelineRunsResponses[F] {
      def resp200(value: QueueItemImpl): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object putPipelineFavorite {
    import BlueOceanApiDelegate.putPipelineFavoriteResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ PUT -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "favorite") as auth =>
          delegate.putPipelineFavorite.handle_jenkins_auth(auth, req, req.asJsonDecode[Boolean] , organization, pipeline, responses)

    }

    val responses: putPipelineFavoriteResponses[F] = new putPipelineFavoriteResponses[F] {
      def resp200(value: FavoriteImpl): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object putPipelineRun {
    import BlueOceanApiDelegate.putPipelineRunResponses

    object blockingQueryParam extends OptionalQueryParamDecoderMatcher[String]("blocking")
    object timeOutInSecsQueryParam extends OptionalQueryParamDecoderMatcher[Int]("timeOutInSecs")

    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ PUT -> Root / "blue" / "rest" / "organizations" / organization / "pipelines" / pipeline / "runs" / run / "stop" :? blockingQueryParam(blocking) +& timeOutInSecsQueryParam(timeOutInSecs)) as auth =>
        delegate.putPipelineRun.handle_jenkins_auth(auth, req, organization, pipeline, run, blocking, timeOutInSecs, responses)

    }

    val responses: putPipelineRunResponses[F] = new putPipelineRunResponses[F] {
      def resp200(value: PipelineRun): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object search {
    import BlueOceanApiDelegate.searchResponses

    object qQueryParam extends QueryParamDecoderMatcher[String]("q")

    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "search" :? qQueryParam(q)) as auth =>
        delegate.search.handle_jenkins_auth(auth, req, q, responses)

    }

    val responses: searchResponses[F] = new searchResponses[F] {
      def resp200(value: String): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object searchClasses {
    import BlueOceanApiDelegate.searchClassesResponses

    object qQueryParam extends QueryParamDecoderMatcher[String]("q")

    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "blue" / "rest" / "classes" :? qQueryParam(q)) as auth =>
        delegate.searchClasses.handle_jenkins_auth(auth, req, q, responses)

    }

    val responses: searchClassesResponses[F] = new searchClassesResponses[F] {
      def resp200(value: String): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }

  val routes =
    getJsonWebKey.route <+>
    getJsonWebToken.route
  val routesjenkins_auth =
    deletePipelineQueueItem.routejenkins_auth <+>
    getAuthenticatedUser.routejenkins_auth <+>
    getClasses.routejenkins_auth <+>
    getOrganisation.routejenkins_auth <+>
    getOrganisations.routejenkins_auth <+>
    getPipeline.routejenkins_auth <+>
    getPipelineActivities.routejenkins_auth <+>
    getPipelineBranch.routejenkins_auth <+>
    getPipelineBranchRun.routejenkins_auth <+>
    getPipelineBranches.routejenkins_auth <+>
    getPipelineFolder.routejenkins_auth <+>
    getPipelineFolderPipeline.routejenkins_auth <+>
    getPipelineQueue.routejenkins_auth <+>
    getPipelineRun.routejenkins_auth <+>
    getPipelineRunLog.routejenkins_auth <+>
    getPipelineRunNode.routejenkins_auth <+>
    getPipelineRunNodeStep.routejenkins_auth <+>
    getPipelineRunNodeStepLog.routejenkins_auth <+>
    getPipelineRunNodeSteps.routejenkins_auth <+>
    getPipelineRunNodes.routejenkins_auth <+>
    getPipelineRuns.routejenkins_auth <+>
    getPipelines.routejenkins_auth <+>
    getSCM.routejenkins_auth <+>
    getSCMOrganisationRepositories.routejenkins_auth <+>
    getSCMOrganisationRepository.routejenkins_auth <+>
    getSCMOrganisations.routejenkins_auth <+>
    getUser.routejenkins_auth <+>
    getUserFavorites.routejenkins_auth <+>
    getUsers.routejenkins_auth <+>
    postPipelineRun.routejenkins_auth <+>
    postPipelineRuns.routejenkins_auth <+>
    putPipelineFavorite.routejenkins_auth <+>
    putPipelineRun.routejenkins_auth <+>
    search.routejenkins_auth <+>
    searchClasses.routejenkins_auth
}

object BlueOceanApiDelegate {
  trait deletePipelineQueueItemResponses[F[_]] {
    def resp200(): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getAuthenticatedUserResponses[F[_]] {
    def resp200(value: User): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getClassesResponses[F[_]] {
    def resp200(value: String): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getJsonWebKeyResponses[F[_]] {
    def resp200(value: String): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getJsonWebTokenResponses[F[_]] {
    def resp200(value: String): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getOrganisationResponses[F[_]] {
    def resp200(value: Organisation): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
    def resp404(): F[Response[F]]
  }

  trait getOrganisationsResponses[F[_]] {
    def resp200(value: List[Organisation]): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getPipelineResponses[F[_]] {
    def resp200(value: Pipeline): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
    def resp404(): F[Response[F]]
  }

  trait getPipelineActivitiesResponses[F[_]] {
    def resp200(value: List[PipelineActivity]): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getPipelineBranchResponses[F[_]] {
    def resp200(value: BranchImpl): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getPipelineBranchRunResponses[F[_]] {
    def resp200(value: PipelineRun): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getPipelineBranchesResponses[F[_]] {
    def resp200(value: MultibranchPipeline): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getPipelineFolderResponses[F[_]] {
    def resp200(value: PipelineFolderImpl): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getPipelineFolderPipelineResponses[F[_]] {
    def resp200(value: PipelineImpl): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getPipelineQueueResponses[F[_]] {
    def resp200(value: List[QueueItemImpl]): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getPipelineRunResponses[F[_]] {
    def resp200(value: PipelineRun): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getPipelineRunLogResponses[F[_]] {
    def resp200(value: String): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getPipelineRunNodeResponses[F[_]] {
    def resp200(value: PipelineRunNode): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getPipelineRunNodeStepResponses[F[_]] {
    def resp200(value: PipelineStepImpl): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getPipelineRunNodeStepLogResponses[F[_]] {
    def resp200(value: String): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getPipelineRunNodeStepsResponses[F[_]] {
    def resp200(value: List[PipelineStepImpl]): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getPipelineRunNodesResponses[F[_]] {
    def resp200(value: List[PipelineRunNode]): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getPipelineRunsResponses[F[_]] {
    def resp200(value: List[PipelineRun]): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getPipelinesResponses[F[_]] {
    def resp200(value: List[Pipeline]): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getSCMResponses[F[_]] {
    def resp200(value: GithubScm): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getSCMOrganisationRepositoriesResponses[F[_]] {
    def resp200(value: List[GithubOrganization]): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getSCMOrganisationRepositoryResponses[F[_]] {
    def resp200(value: List[GithubOrganization]): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getSCMOrganisationsResponses[F[_]] {
    def resp200(value: List[GithubOrganization]): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getUserResponses[F[_]] {
    def resp200(value: User): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getUserFavoritesResponses[F[_]] {
    def resp200(value: List[FavoriteImpl]): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getUsersResponses[F[_]] {
    def resp200(value: User): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait postPipelineRunResponses[F[_]] {
    def resp200(value: QueueItemImpl): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait postPipelineRunsResponses[F[_]] {
    def resp200(value: QueueItemImpl): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait putPipelineFavoriteResponses[F[_]] {
    def resp200(value: FavoriteImpl): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait putPipelineRunResponses[F[_]] {
    def resp200(value: PipelineRun): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait searchResponses[F[_]] {
    def resp200(value: String): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait searchClassesResponses[F[_]] {
    def resp200(value: String): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

}

trait BlueOceanApiDelegate[F[_], jenkins_auth] {

  trait deletePipelineQueueItem {
    import BlueOceanApiDelegate.deletePipelineQueueItemResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      queue: String,
      responses: deletePipelineQueueItemResponses[F]
    ): F[Response[F]]

  }
  def deletePipelineQueueItem: deletePipelineQueueItem


  trait getAuthenticatedUser {
    import BlueOceanApiDelegate.getAuthenticatedUserResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      responses: getAuthenticatedUserResponses[F]
    ): F[Response[F]]

  }
  def getAuthenticatedUser: getAuthenticatedUser


  trait getClasses {
    import BlueOceanApiDelegate.getClassesResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      `class`: String,
      responses: getClassesResponses[F]
    ): F[Response[F]]

  }
  def getClasses: getClasses


  trait getJsonWebKey {
    import BlueOceanApiDelegate.getJsonWebKeyResponses

    def handle(
      req: Request[F],
      key: Int,
      responses: getJsonWebKeyResponses[F]
    ): F[Response[F]]

  }
  def getJsonWebKey: getJsonWebKey


  trait getJsonWebToken {
    import BlueOceanApiDelegate.getJsonWebTokenResponses

    def handle(
      req: Request[F],
      expiryTimeInMins: Option[Int],
      maxExpiryTimeInMins: Option[Int],
      responses: getJsonWebTokenResponses[F]
    ): F[Response[F]]

  }
  def getJsonWebToken: getJsonWebToken


  trait getOrganisation {
    import BlueOceanApiDelegate.getOrganisationResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      responses: getOrganisationResponses[F]
    ): F[Response[F]]

  }
  def getOrganisation: getOrganisation


  trait getOrganisations {
    import BlueOceanApiDelegate.getOrganisationsResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      responses: getOrganisationsResponses[F]
    ): F[Response[F]]

  }
  def getOrganisations: getOrganisations


  trait getPipeline {
    import BlueOceanApiDelegate.getPipelineResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      responses: getPipelineResponses[F]
    ): F[Response[F]]

  }
  def getPipeline: getPipeline


  trait getPipelineActivities {
    import BlueOceanApiDelegate.getPipelineActivitiesResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      responses: getPipelineActivitiesResponses[F]
    ): F[Response[F]]

  }
  def getPipelineActivities: getPipelineActivities


  trait getPipelineBranch {
    import BlueOceanApiDelegate.getPipelineBranchResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      branch: String,
      responses: getPipelineBranchResponses[F]
    ): F[Response[F]]

  }
  def getPipelineBranch: getPipelineBranch


  trait getPipelineBranchRun {
    import BlueOceanApiDelegate.getPipelineBranchRunResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      branch: String,
      run: String,
      responses: getPipelineBranchRunResponses[F]
    ): F[Response[F]]

  }
  def getPipelineBranchRun: getPipelineBranchRun


  trait getPipelineBranches {
    import BlueOceanApiDelegate.getPipelineBranchesResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      responses: getPipelineBranchesResponses[F]
    ): F[Response[F]]

  }
  def getPipelineBranches: getPipelineBranches


  trait getPipelineFolder {
    import BlueOceanApiDelegate.getPipelineFolderResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      folder: String,
      responses: getPipelineFolderResponses[F]
    ): F[Response[F]]

  }
  def getPipelineFolder: getPipelineFolder


  trait getPipelineFolderPipeline {
    import BlueOceanApiDelegate.getPipelineFolderPipelineResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      folder: String,
      responses: getPipelineFolderPipelineResponses[F]
    ): F[Response[F]]

  }
  def getPipelineFolderPipeline: getPipelineFolderPipeline


  trait getPipelineQueue {
    import BlueOceanApiDelegate.getPipelineQueueResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      responses: getPipelineQueueResponses[F]
    ): F[Response[F]]

  }
  def getPipelineQueue: getPipelineQueue


  trait getPipelineRun {
    import BlueOceanApiDelegate.getPipelineRunResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      run: String,
      responses: getPipelineRunResponses[F]
    ): F[Response[F]]

  }
  def getPipelineRun: getPipelineRun


  trait getPipelineRunLog {
    import BlueOceanApiDelegate.getPipelineRunLogResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      run: String,
      start: Option[Int],
      download: Option[Boolean],
      responses: getPipelineRunLogResponses[F]
    ): F[Response[F]]

  }
  def getPipelineRunLog: getPipelineRunLog


  trait getPipelineRunNode {
    import BlueOceanApiDelegate.getPipelineRunNodeResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      run: String,
      node: String,
      responses: getPipelineRunNodeResponses[F]
    ): F[Response[F]]

  }
  def getPipelineRunNode: getPipelineRunNode


  trait getPipelineRunNodeStep {
    import BlueOceanApiDelegate.getPipelineRunNodeStepResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      run: String,
      node: String,
      step: String,
      responses: getPipelineRunNodeStepResponses[F]
    ): F[Response[F]]

  }
  def getPipelineRunNodeStep: getPipelineRunNodeStep


  trait getPipelineRunNodeStepLog {
    import BlueOceanApiDelegate.getPipelineRunNodeStepLogResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      run: String,
      node: String,
      step: String,
      responses: getPipelineRunNodeStepLogResponses[F]
    ): F[Response[F]]

  }
  def getPipelineRunNodeStepLog: getPipelineRunNodeStepLog


  trait getPipelineRunNodeSteps {
    import BlueOceanApiDelegate.getPipelineRunNodeStepsResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      run: String,
      node: String,
      responses: getPipelineRunNodeStepsResponses[F]
    ): F[Response[F]]

  }
  def getPipelineRunNodeSteps: getPipelineRunNodeSteps


  trait getPipelineRunNodes {
    import BlueOceanApiDelegate.getPipelineRunNodesResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      run: String,
      responses: getPipelineRunNodesResponses[F]
    ): F[Response[F]]

  }
  def getPipelineRunNodes: getPipelineRunNodes


  trait getPipelineRuns {
    import BlueOceanApiDelegate.getPipelineRunsResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      responses: getPipelineRunsResponses[F]
    ): F[Response[F]]

  }
  def getPipelineRuns: getPipelineRuns


  trait getPipelines {
    import BlueOceanApiDelegate.getPipelinesResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      responses: getPipelinesResponses[F]
    ): F[Response[F]]

  }
  def getPipelines: getPipelines


  trait getSCM {
    import BlueOceanApiDelegate.getSCMResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      scm: String,
      responses: getSCMResponses[F]
    ): F[Response[F]]

  }
  def getSCM: getSCM


  trait getSCMOrganisationRepositories {
    import BlueOceanApiDelegate.getSCMOrganisationRepositoriesResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      scm: String,
      scmOrganisation: String,
      credentialId: Option[String],
      pageSize: Option[Int],
      pageNumber: Option[Int],
      responses: getSCMOrganisationRepositoriesResponses[F]
    ): F[Response[F]]

  }
  def getSCMOrganisationRepositories: getSCMOrganisationRepositories


  trait getSCMOrganisationRepository {
    import BlueOceanApiDelegate.getSCMOrganisationRepositoryResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      scm: String,
      scmOrganisation: String,
      repository: String,
      credentialId: Option[String],
      responses: getSCMOrganisationRepositoryResponses[F]
    ): F[Response[F]]

  }
  def getSCMOrganisationRepository: getSCMOrganisationRepository


  trait getSCMOrganisations {
    import BlueOceanApiDelegate.getSCMOrganisationsResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      scm: String,
      credentialId: Option[String],
      responses: getSCMOrganisationsResponses[F]
    ): F[Response[F]]

  }
  def getSCMOrganisations: getSCMOrganisations


  trait getUser {
    import BlueOceanApiDelegate.getUserResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      user: String,
      responses: getUserResponses[F]
    ): F[Response[F]]

  }
  def getUser: getUser


  trait getUserFavorites {
    import BlueOceanApiDelegate.getUserFavoritesResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      user: String,
      responses: getUserFavoritesResponses[F]
    ): F[Response[F]]

  }
  def getUserFavorites: getUserFavorites


  trait getUsers {
    import BlueOceanApiDelegate.getUsersResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      responses: getUsersResponses[F]
    ): F[Response[F]]

  }
  def getUsers: getUsers


  trait postPipelineRun {
    import BlueOceanApiDelegate.postPipelineRunResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      run: String,
      responses: postPipelineRunResponses[F]
    ): F[Response[F]]

  }
  def postPipelineRun: postPipelineRun


  trait postPipelineRuns {
    import BlueOceanApiDelegate.postPipelineRunsResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      responses: postPipelineRunsResponses[F]
    ): F[Response[F]]

  }
  def postPipelineRuns: postPipelineRuns


  trait putPipelineFavorite {
    import BlueOceanApiDelegate.putPipelineFavoriteResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      putPipelineFavorite: F[Boolean],
      organization: String,
      pipeline: String,
      responses: putPipelineFavoriteResponses[F]
    ): F[Response[F]]


  }
  def putPipelineFavorite: putPipelineFavorite


  trait putPipelineRun {
    import BlueOceanApiDelegate.putPipelineRunResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      organization: String,
      pipeline: String,
      run: String,
      blocking: Option[String],
      timeOutInSecs: Option[Int],
      responses: putPipelineRunResponses[F]
    ): F[Response[F]]

  }
  def putPipelineRun: putPipelineRun


  trait search {
    import BlueOceanApiDelegate.searchResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      q: String,
      responses: searchResponses[F]
    ): F[Response[F]]

  }
  def search: search


  trait searchClasses {
    import BlueOceanApiDelegate.searchClassesResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      q: String,
      responses: searchClassesResponses[F]
    ): F[Response[F]]

  }
  def searchClasses: searchClasses

}