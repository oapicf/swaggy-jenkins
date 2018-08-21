<?php
/**
 * GithubRepositories
 */
namespace app\Models;

/**
 * GithubRepositories
 */
class GithubRepositories {

    /** @var string $_class */
    private $_class;

    /** @var \app\Models\GithubRepositorieslinks $_links */
    private $_links;

    /** @var \app\Models\GithubRepository[] $items */
    private $items;

    /** @var int $last_page */
    private $last_page;

    /** @var int $next_page */
    private $next_page;

    /** @var int $page_size */
    private $page_size;

}
