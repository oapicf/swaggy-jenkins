<?php
/**
 * Pipeline
 */
namespace app\Models;

/**
 * Pipeline
 */
class Pipeline {

    /** @var string $class */
    public $class = "";

    /** @var string $organization */
    public $organization = "";

    /** @var string $name */
    public $name = "";

    /** @var string $displayName */
    public $displayName = "";

    /** @var string $fullName */
    public $fullName = "";

    /** @var int $weatherScore */
    public $weatherScore = 0;

    /** @var int $estimatedDurationInMillis */
    public $estimatedDurationInMillis = 0;

    /** @var \app\Models\PipelinelatestRun $latestRun */
    public $latestRun;

}
