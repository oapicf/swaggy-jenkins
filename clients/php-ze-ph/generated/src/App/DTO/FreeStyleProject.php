<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class FreeStyleProject
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $name;
    /**
     * @DTA\Data(field="url", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $url;
    /**
     * @DTA\Data(field="color", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $color;
    /**
     * @DTA\Data(field="actions", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\FreeStyleProjectactions::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\FreeStyleProjectactions::class}}
     * }})
     * @var \App\DTO\FreeStyleProjectactions[]
     */
    public $actions;
    /**
     * @DTA\Data(field="description", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $description;
    /**
     * @DTA\Data(field="displayName", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $display_name;
    /**
     * @DTA\Data(field="displayNameOrNull", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $display_name_or_null;
    /**
     * @DTA\Data(field="fullDisplayName", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $full_display_name;
    /**
     * @DTA\Data(field="fullName", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $full_name;
    /**
     * @DTA\Data(field="buildable", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $buildable;
    /**
     * @DTA\Data(field="builds", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\FreeStyleBuild::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\FreeStyleBuild::class}}
     * }})
     * @var \App\DTO\FreeStyleBuild[]
     */
    public $builds;
    /**
     * @DTA\Data(field="firstBuild", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleBuild::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\FreeStyleBuild::class})
     * @var \App\DTO\FreeStyleBuild
     */
    public $first_build;
    /**
     * @DTA\Data(field="healthReport", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\FreeStyleProjecthealthReport::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\FreeStyleProjecthealthReport::class}}
     * }})
     * @var \App\DTO\FreeStyleProjecthealthReport[]
     */
    public $health_report;
    /**
     * @DTA\Data(field="inQueue", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $in_queue;
    /**
     * @DTA\Data(field="keepDependencies", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $keep_dependencies;
    /**
     * @DTA\Data(field="lastBuild", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleBuild::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\FreeStyleBuild::class})
     * @var \App\DTO\FreeStyleBuild
     */
    public $last_build;
    /**
     * @DTA\Data(field="lastCompletedBuild", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleBuild::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\FreeStyleBuild::class})
     * @var \App\DTO\FreeStyleBuild
     */
    public $last_completed_build;
    /**
     * @DTA\Data(field="lastFailedBuild", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $last_failed_build;
    /**
     * @DTA\Data(field="lastStableBuild", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleBuild::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\FreeStyleBuild::class})
     * @var \App\DTO\FreeStyleBuild
     */
    public $last_stable_build;
    /**
     * @DTA\Data(field="lastSuccessfulBuild", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleBuild::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\FreeStyleBuild::class})
     * @var \App\DTO\FreeStyleBuild
     */
    public $last_successful_build;
    /**
     * @DTA\Data(field="lastUnstableBuild", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $last_unstable_build;
    /**
     * @DTA\Data(field="lastUnsuccessfulBuild", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $last_unsuccessful_build;
    /**
     * @DTA\Data(field="nextBuildNumber", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $next_build_number;
    /**
     * @DTA\Data(field="queueItem", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $queue_item;
    /**
     * @DTA\Data(field="concurrentBuild", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $concurrent_build;
    /**
     * @DTA\Data(field="scm", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\NullSCM::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\NullSCM::class})
     * @var \App\DTO\NullSCM
     */
    public $scm;
}
