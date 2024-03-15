<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class PipelineBranchesitem
{
    /**
     * @DTA\Data(field="displayName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $display_name = null;

    /**
     * @DTA\Data(field="estimatedDurationInMillis", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $estimated_duration_in_millis = null;

    /**
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $name = null;

    /**
     * @DTA\Data(field="weatherScore", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $weather_score = null;

    /**
     * @DTA\Data(field="latestRun", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\PipelineBranchesitemlatestRun::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\PipelineBranchesitemlatestRun::class})
     */
    public ?\App\DTO\PipelineBranchesitemlatestRun $latest_run = null;

    /**
     * @DTA\Data(field="organization", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $organization = null;

    /**
     * @DTA\Data(field="pullRequest", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\PipelineBranchesitempullRequest::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\PipelineBranchesitempullRequest::class})
     */
    public ?\App\DTO\PipelineBranchesitempullRequest $pull_request = null;

    /**
     * @DTA\Data(field="totalNumberOfPullRequests", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $total_number_of_pull_requests = null;

    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $_class = null;

}
