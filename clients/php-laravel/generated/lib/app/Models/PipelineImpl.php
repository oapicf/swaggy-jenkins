<?php
/**
 * PipelineImpl
 */
namespace app\Models;

/**
 * PipelineImpl
 */
class PipelineImpl {

    /** @var string $class */
    public $class = "";

    /** @var string $displayName */
    public $displayName = "";

    /** @var int $estimatedDurationInMillis */
    public $estimatedDurationInMillis = 0;

    /** @var string $fullName */
    public $fullName = "";

    /** @var string $latestRun */
    public $latestRun = "";

    /** @var string $name */
    public $name = "";

    /** @var string $organization */
    public $organization = "";

    /** @var int $weatherScore */
    public $weatherScore = 0;

    /** @var \app\Models\PipelineImpllinks $links */
    public $links;

}
