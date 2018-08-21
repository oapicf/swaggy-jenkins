<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class GithubRepositories
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubRepositorieslinks::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\GithubRepositorieslinks::class})
     * @var \App\DTO\GithubRepositorieslinks
     */
    public $_links;
    /**
     * @DTA\Data(field="items", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\GithubRepository::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\GithubRepository::class}}
     * }})
     * @var \App\DTO\GithubRepository[]
     */
    public $items;
    /**
     * @DTA\Data(field="lastPage", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $last_page;
    /**
     * @DTA\Data(field="nextPage", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $next_page;
    /**
     * @DTA\Data(field="pageSize", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $page_size;
}
