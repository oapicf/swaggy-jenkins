<?php
/**
 * PipelineActivity
 */
namespace app\Models;

/**
 * PipelineActivity
 */
class PipelineActivity {

    /** @var string $class */
    public $class = "";

    /** @var \app\Models\PipelineActivityartifacts[] $artifacts */
    public $artifacts = [];

    /** @var int $durationInMillis */
    public $durationInMillis = 0;

    /** @var int $estimatedDurationInMillis */
    public $estimatedDurationInMillis = 0;

    /** @var string $enQueueTime */
    public $enQueueTime = "";

    /** @var string $endTime */
    public $endTime = "";

    /** @var string $id */
    public $id = "";

    /** @var string $organization */
    public $organization = "";

    /** @var string $pipeline */
    public $pipeline = "";

    /** @var string $result */
    public $result = "";

    /** @var string $runSummary */
    public $runSummary = "";

    /** @var string $startTime */
    public $startTime = "";

    /** @var string $state */
    public $state = "";

    /** @var string $type */
    public $type = "";

    /** @var string $commitId */
    public $commitId = "";

}
