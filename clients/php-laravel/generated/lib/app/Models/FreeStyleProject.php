<?php
/**
 * FreeStyleProject
 */
namespace app\Models;

/**
 * FreeStyleProject
 */
class FreeStyleProject {

    /** @var string $_class */
    private $_class;

    /** @var string $name */
    private $name;

    /** @var string $url */
    private $url;

    /** @var string $color */
    private $color;

    /** @var \app\Models\FreeStyleProjectactions[] $actions */
    private $actions;

    /** @var string $description */
    private $description;

    /** @var string $display_name */
    private $display_name;

    /** @var string $display_name_or_null */
    private $display_name_or_null;

    /** @var string $full_display_name */
    private $full_display_name;

    /** @var string $full_name */
    private $full_name;

    /** @var bool $buildable */
    private $buildable;

    /** @var \app\Models\FreeStyleBuild[] $builds */
    private $builds;

    /** @var \app\Models\FreeStyleBuild $first_build */
    private $first_build;

    /** @var \app\Models\FreeStyleProjecthealthReport[] $health_report */
    private $health_report;

    /** @var bool $in_queue */
    private $in_queue;

    /** @var bool $keep_dependencies */
    private $keep_dependencies;

    /** @var \app\Models\FreeStyleBuild $last_build */
    private $last_build;

    /** @var \app\Models\FreeStyleBuild $last_completed_build */
    private $last_completed_build;

    /** @var string $last_failed_build */
    private $last_failed_build;

    /** @var \app\Models\FreeStyleBuild $last_stable_build */
    private $last_stable_build;

    /** @var \app\Models\FreeStyleBuild $last_successful_build */
    private $last_successful_build;

    /** @var string $last_unstable_build */
    private $last_unstable_build;

    /** @var string $last_unsuccessful_build */
    private $last_unsuccessful_build;

    /** @var int $next_build_number */
    private $next_build_number;

    /** @var string $queue_item */
    private $queue_item;

    /** @var bool $concurrent_build */
    private $concurrent_build;

    /** @var \app\Models\NullSCM $scm */
    private $scm;

}
