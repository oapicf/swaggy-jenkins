import { FreeStyleProjecthealthReport } from './free-style-projecthealth-report';
import { NullSCM } from './null-scm';
import { FreeStyleBuild } from './free-style-build';
import { FreeStyleProjectactions } from './free-style-projectactions';


export interface FreeStyleProject { 
  _class?: string;
  name?: string;
  url?: string;
  color?: string;
  actions?: Array<FreeStyleProjectactions>;
  description?: string;
  displayName?: string;
  displayNameOrNull?: string;
  fullDisplayName?: string;
  fullName?: string;
  buildable?: boolean;
  builds?: Array<FreeStyleBuild>;
  firstBuild?: FreeStyleBuild;
  healthReport?: Array<FreeStyleProjecthealthReport>;
  inQueue?: boolean;
  keepDependencies?: boolean;
  lastBuild?: FreeStyleBuild;
  lastCompletedBuild?: FreeStyleBuild;
  lastFailedBuild?: string;
  lastStableBuild?: FreeStyleBuild;
  lastSuccessfulBuild?: FreeStyleBuild;
  lastUnstableBuild?: string;
  lastUnsuccessfulBuild?: string;
  nextBuildNumber?: number;
  queueItem?: string;
  concurrentBuild?: boolean;
  scm?: NullSCM;
}

