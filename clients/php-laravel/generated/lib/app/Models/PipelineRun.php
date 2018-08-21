<?php
/**
 * PipelineRun
 */
namespace app\Models;

/**
 * PipelineRun
 */
class PipelineRun {

    /** @var string $_class */
    private $_class;

    /** @var \app\Models\PipelineRunartifacts[] $artifacts */
    private $artifacts;

    /** @var int $duration_in_millis */
    private $duration_in_millis;

    /** @var int $estimated_duration_in_millis */
    private $estimated_duration_in_millis;

    /** @var string $en_queue_time */
    private $en_queue_time;

    /** @var string $end_time */
    private $end_time;

    /** @var string $id */
    private $id;

    /** @var string $organization */
    private $organization;

    /** @var string $pipeline */
    private $pipeline;

    /** @var string $result */
    private $result;

    /** @var string $run_summary */
    private $run_summary;

    /** @var string $start_time */
    private $start_time;

    /** @var string $state */
    private $state;

    /** @var string $type */
    private $type;

    /** @var string $commit_id */
    private $commit_id;

}
