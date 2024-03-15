<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class FreeStyleProject
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $_class = null;

    /**
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $name = null;

    /**
     * @DTA\Data(field="url", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $url = null;

    /**
     * @DTA\Data(field="color", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $color = null;

    /**
     * @DTA\Data(field="actions", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection1::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection1::class})
     */
    public ?\App\DTO\Collection1 $actions = null;

    /**
     * @DTA\Data(field="description", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $description = null;

    /**
     * @DTA\Data(field="displayName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $display_name = null;

    /**
     * @DTA\Data(field="displayNameOrNull", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $display_name_or_null = null;

    /**
     * @DTA\Data(field="fullDisplayName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $full_display_name = null;

    /**
     * @DTA\Data(field="fullName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $full_name = null;

    /**
     * @DTA\Data(field="buildable", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $buildable = null;

    /**
     * @DTA\Data(field="builds", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection4::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection4::class})
     */
    public ?\App\DTO\Collection4 $builds = null;

    /**
     * @DTA\Data(field="firstBuild", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleBuild::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\FreeStyleBuild::class})
     */
    public ?\App\DTO\FreeStyleBuild $first_build = null;

    /**
     * @DTA\Data(field="healthReport", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection5::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection5::class})
     */
    public ?\App\DTO\Collection5 $health_report = null;

    /**
     * @DTA\Data(field="inQueue", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $in_queue = null;

    /**
     * @DTA\Data(field="keepDependencies", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $keep_dependencies = null;

    /**
     * @DTA\Data(field="lastBuild", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleBuild::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\FreeStyleBuild::class})
     */
    public ?\App\DTO\FreeStyleBuild $last_build = null;

    /**
     * @DTA\Data(field="lastCompletedBuild", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleBuild::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\FreeStyleBuild::class})
     */
    public ?\App\DTO\FreeStyleBuild $last_completed_build = null;

    /**
     * @DTA\Data(field="lastFailedBuild", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $last_failed_build = null;

    /**
     * @DTA\Data(field="lastStableBuild", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleBuild::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\FreeStyleBuild::class})
     */
    public ?\App\DTO\FreeStyleBuild $last_stable_build = null;

    /**
     * @DTA\Data(field="lastSuccessfulBuild", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleBuild::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\FreeStyleBuild::class})
     */
    public ?\App\DTO\FreeStyleBuild $last_successful_build = null;

    /**
     * @DTA\Data(field="lastUnstableBuild", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $last_unstable_build = null;

    /**
     * @DTA\Data(field="lastUnsuccessfulBuild", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $last_unsuccessful_build = null;

    /**
     * @DTA\Data(field="nextBuildNumber", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $next_build_number = null;

    /**
     * @DTA\Data(field="queueItem", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $queue_item = null;

    /**
     * @DTA\Data(field="concurrentBuild", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $concurrent_build = null;

    /**
     * @DTA\Data(field="scm", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\NullSCM::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\NullSCM::class})
     */
    public ?\App\DTO\NullSCM $scm = null;

}
