<?php
/**
 * PipelineBranchesitem
 */
namespace app\Models;

/**
 * PipelineBranchesitem
 */
class PipelineBranchesitem {

    /** @var string $display_name */
    private $display_name;

    /** @var int $estimated_duration_in_millis */
    private $estimated_duration_in_millis;

    /** @var string $name */
    private $name;

    /** @var int $weather_score */
    private $weather_score;

    /** @var \app\Models\PipelineBranchesitemlatestRun $latest_run */
    private $latest_run;

    /** @var string $organization */
    private $organization;

    /** @var \app\Models\PipelineBranchesitempullRequest $pull_request */
    private $pull_request;

    /** @var int $total_number_of_pull_requests */
    private $total_number_of_pull_requests;

    /** @var string $_class */
    private $_class;

}
