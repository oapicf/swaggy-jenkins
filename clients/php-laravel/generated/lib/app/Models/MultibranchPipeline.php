<?php
/**
 * MultibranchPipeline
 */
namespace app\Models;

/**
 * MultibranchPipeline
 */
class MultibranchPipeline {

    /** @var string $display_name */
    private $display_name;

    /** @var int $estimated_duration_in_millis */
    private $estimated_duration_in_millis;

    /** @var string $latest_run */
    private $latest_run;

    /** @var string $name */
    private $name;

    /** @var string $organization */
    private $organization;

    /** @var int $weather_score */
    private $weather_score;

    /** @var string[] $branch_names */
    private $branch_names;

    /** @var int $number_of_failing_branches */
    private $number_of_failing_branches;

    /** @var int $number_of_failing_pull_requests */
    private $number_of_failing_pull_requests;

    /** @var int $number_of_successful_branches */
    private $number_of_successful_branches;

    /** @var int $number_of_successful_pull_requests */
    private $number_of_successful_pull_requests;

    /** @var int $total_number_of_branches */
    private $total_number_of_branches;

    /** @var int $total_number_of_pull_requests */
    private $total_number_of_pull_requests;

    /** @var string $_class */
    private $_class;

}
