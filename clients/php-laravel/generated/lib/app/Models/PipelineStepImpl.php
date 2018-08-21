<?php
/**
 * PipelineStepImpl
 */
namespace app\Models;

/**
 * PipelineStepImpl
 */
class PipelineStepImpl {

    /** @var string $_class */
    private $_class;

    /** @var \app\Models\PipelineStepImpllinks $_links */
    private $_links;

    /** @var string $display_name */
    private $display_name;

    /** @var int $duration_in_millis */
    private $duration_in_millis;

    /** @var string $id */
    private $id;

    /** @var \app\Models\InputStepImpl $input */
    private $input;

    /** @var string $result */
    private $result;

    /** @var string $start_time */
    private $start_time;

    /** @var string $state */
    private $state;

}
