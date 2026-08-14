import { PipelineBranchesitempullRequest } from './pipeline-branchesitempull-request';
import { PipelineBranchesitemlatestRun } from './pipeline-branchesitemlatest-run';


export interface PipelineBranchesitem { 
  displayName?: string;
  estimatedDurationInMillis?: number;
  name?: string;
  weatherScore?: number;
  latestRun?: PipelineBranchesitemlatestRun;
  organization?: string;
  pullRequest?: PipelineBranchesitempullRequest;
  totalNumberOfPullRequests?: number;
  _class?: string;
}

