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
    public $class = "";

    /** @var \app\Models\GithubRepositorieslinks $links */
    public $links;

    /** @var \app\Models\GithubRepository[] $items */
    public $items = [];

    /** @var int $lastPage */
    public $lastPage = 0;

    /** @var int $nextPage */
    public $nextPage = 0;

    /** @var int $pageSize */
    public $pageSize = 0;

}
