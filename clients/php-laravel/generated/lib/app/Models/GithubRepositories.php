<?php
/**
 * GithubRepositories
 */
namespace app\Models;

/**
 * GithubRepositories
 */
class GithubRepositories {

    /** @var string $class */
    private $class;

    /** @var \app\Models\GithubRepositorieslinks $links */
    private $links;

    /** @var \app\Models\GithubRepository[] $items */
    private $items;

    /** @var int $lastPage */
    private $lastPage;

    /** @var int $nextPage */
    private $nextPage;

    /** @var int $pageSize */
    private $pageSize;

}
