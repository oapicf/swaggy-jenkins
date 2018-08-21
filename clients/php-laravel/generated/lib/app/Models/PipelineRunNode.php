<?php
/**
 * PipelineRunNode
 */
namespace app\Models;

/**
 * PipelineRunNode
 */
class PipelineRunNode {

    /** @var string $_class */
    private $_class;

    /** @var string $display_name */
    private $display_name;

    /** @var int $duration_in_millis */
    private $duration_in_millis;

    /** @var \app\Models\PipelineRunNodeedges[] $edges */
    private $edges;

    /** @var string $id */
    private $id;

    /** @var string $result */
    private $result;

    /** @var string $start_time */
    private $start_time;

    /** @var string $state */
    private $state;

}
