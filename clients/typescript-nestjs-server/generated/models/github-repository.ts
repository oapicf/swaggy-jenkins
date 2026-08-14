import { GithubRepositorypermissions } from './github-repositorypermissions';
import { GithubRepositorylinks } from './github-repositorylinks';


export interface GithubRepository { 
  _class?: string;
  _links?: GithubRepositorylinks;
  defaultBranch?: string;
  description?: string;
  name?: string;
  permissions?: GithubRepositorypermissions;
  'private'?: boolean;
  fullName?: string;
}

