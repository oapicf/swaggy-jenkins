<?php
/**
 * GithubOrganization
 */
namespace app\Models;

/**
 * GithubOrganization
 */
class GithubOrganization {

    /** @var string $class */
    public $class = "";

    /** @var \app\Models\GithubOrganizationlinks $links */
    public $links;

    /** @var bool $jenkinsOrganizationPipeline */
    public $jenkinsOrganizationPipeline = false;

    /** @var string $name */
    public $name = "";

}
