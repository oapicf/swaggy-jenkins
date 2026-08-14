import { StringParameterDefinition } from './string-parameter-definition';
import { BranchImpllinks } from './branch-impllinks';
import { BranchImplpermissions } from './branch-implpermissions';
import { PipelineRunImpl } from './pipeline-run-impl';


export interface BranchImpl { 
  _class?: string;
  displayName?: string;
  estimatedDurationInMillis?: number;
  fullDisplayName?: string;
  fullName?: string;
  name?: string;
  organization?: string;
  parameters?: Array<StringParameterDefinition>;
  permissions?: BranchImplpermissions;
  weatherScore?: number;
  pullRequest?: string;
  _links?: BranchImpllinks;
  latestRun?: PipelineRunImpl;
}

