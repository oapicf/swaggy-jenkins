

export interface MultibranchPipeline { 
  displayName?: string;
  estimatedDurationInMillis?: number;
  latestRun?: string;
  name?: string;
  organization?: string;
  weatherScore?: number;
  branchNames?: Array<string>;
  numberOfFailingBranches?: number;
  numberOfFailingPullRequests?: number;
  numberOfSuccessfulBranches?: number;
  numberOfSuccessfulPullRequests?: number;
  totalNumberOfBranches?: number;
  totalNumberOfPullRequests?: number;
  _class?: string;
}

