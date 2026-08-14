import { PipelineImpl } from './pipeline-impl';
import { FavoriteImpllinks } from './favorite-impllinks';


export interface FavoriteImpl { 
  _class?: string;
  _links?: FavoriteImpllinks;
  item?: PipelineImpl;
}

