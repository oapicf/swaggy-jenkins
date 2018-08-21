<?php
/**
 * GithubRepositories
 */
namespace OpenAPIServer\Model;

/**
 * GithubRepositories
 */
class GithubRepositories {

    /** @var string $class */
    private $class;

    /** @var \OpenAPIServer\Model\GithubRepositorieslinks $links */
    private $links;

    /** @var \OpenAPIServer\Model\GithubRepository[] $items */
    private $items;

    /** @var int $lastPage */
    private $lastPage;

    /** @var int $nextPage */
    private $nextPage;

    /** @var int $pageSize */
    private $pageSize;

}
