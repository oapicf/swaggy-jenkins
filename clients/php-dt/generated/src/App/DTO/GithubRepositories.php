<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class GithubRepositories
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $_class;

    /**
     * @DTA\Data(field="_links", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GithubRepositorieslinks::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\GithubRepositorieslinks::class})
     * @var \App\DTO\GithubRepositorieslinks|null
     */
    public $_links;

    /**
     * @DTA\Data(field="items", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":::class})
     * @var \App\DTO\GithubRepository[]|null
     */
    public $items;

    /**
     * @DTA\Data(field="lastPage", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_page;

    /**
     * @DTA\Data(field="nextPage", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $next_page;

    /**
     * @DTA\Data(field="pageSize", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $page_size;

}
