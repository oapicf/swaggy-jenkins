import { UnlabeledLoadStatistics } from './unlabeled-load-statistics';
import { FreeStyleProject } from './free-style-project';
import { HudsonassignedLabels } from './hudsonassigned-labels';
import { AllView } from './all-view';


export interface Hudson { 
  _class?: string;
  assignedLabels?: Array<HudsonassignedLabels>;
  mode?: string;
  nodeDescription?: string;
  nodeName?: string;
  numExecutors?: number;
  description?: string;
  jobs?: Array<FreeStyleProject>;
  primaryView?: AllView;
  quietingDown?: boolean;
  slaveAgentPort?: number;
  unlabeledLoad?: UnlabeledLoadStatistics;
  useCrumbs?: boolean;
  useSecurity?: boolean;
  views?: Array<AllView>;
}

