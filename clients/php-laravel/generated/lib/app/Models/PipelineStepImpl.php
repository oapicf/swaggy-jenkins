<?php
/**
 * PipelineStepImpl
 */
namespace app\Models;

/**
 * PipelineStepImpl
 */
class PipelineStepImpl {

    /** @var string $class */
    public $class = "";

    /** @var \app\Models\PipelineStepImpllinks $links */
    public $links;

    /** @var string $displayName */
    public $displayName = "";

    /** @var int $durationInMillis */
    public $durationInMillis = 0;

    /** @var string $id */
    public $id = "";

    /** @var \app\Models\InputStepImpl $input */
    public $input;

    /** @var string $result */
    public $result = "";

    /** @var string $startTime */
    public $startTime = "";

    /** @var string $state */
    public $state = "";

}
