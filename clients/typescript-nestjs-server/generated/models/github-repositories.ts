import { GithubRepositorieslinks } from './github-repositorieslinks';
import { GithubRepository } from './github-repository';


export interface GithubRepositories { 
  _class?: string;
  _links?: GithubRepositorieslinks;
  items?: Array<GithubRepository>;
  lastPage?: number;
  nextPage?: number;
  pageSize?: number;
}

