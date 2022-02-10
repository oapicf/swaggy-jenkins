<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class PipelineBranchesitem
{
    /**
     * @DTA\Data(field="displayName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $display_name;

    /**
     * @DTA\Data(field="estimatedDurationInMillis", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $estimated_duration_in_millis;

    /**
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $name;

    /**
     * @DTA\Data(field="weatherScore", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $weather_score;

    /**
     * @DTA\Data(field="latestRun", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\PipelineBranchesitemlatestRun::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\PipelineBranchesitemlatestRun::class})
     * @var \App\DTO\PipelineBranchesitemlatestRun|null
     */
    public $latest_run;

    /**
     * @DTA\Data(field="organization", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $organization;

    /**
     * @DTA\Data(field="pullRequest", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\PipelineBranchesitempullRequest::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\PipelineBranchesitempullRequest::class})
     * @var \App\DTO\PipelineBranchesitempullRequest|null
     */
    public $pull_request;

    /**
     * @DTA\Data(field="totalNumberOfPullRequests", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $total_number_of_pull_requests;

    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $_class;

}
