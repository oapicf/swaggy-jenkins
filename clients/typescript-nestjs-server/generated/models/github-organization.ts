import { GithubOrganizationlinks } from './github-organizationlinks';


export interface GithubOrganization { 
  _class?: string;
  _links?: GithubOrganizationlinks;
  jenkinsOrganizationPipeline?: boolean;
  name?: string;
}

