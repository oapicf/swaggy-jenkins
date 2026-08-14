import { GithubRepositories } from './github-repositories';
import { GithubRespositoryContainerlinks } from './github-respository-containerlinks';


export interface GithubRespositoryContainer { 
  _class?: string;
  _links?: GithubRespositoryContainerlinks;
  repositories?: GithubRepositories;
}

