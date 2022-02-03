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
    private $class;

    /** @var \app\Models\PipelineStepImpllinks $links */
    private $links;

    /** @var string $displayName */
    private $displayName;

    /** @var int $durationInMillis */
    private $durationInMillis;

    /** @var string $id */
    private $id;

    /** @var \app\Models\InputStepImpl $input */
    private $input;

    /** @var string $result */
    private $result;

    /** @var string $startTime */
    private $startTime;

    /** @var string $state */
    private $state;

}
