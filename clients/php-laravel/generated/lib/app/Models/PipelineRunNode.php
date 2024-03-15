<?php
/**
 * PipelineRunNode
 */
namespace app\Models;

/**
 * PipelineRunNode
 */
class PipelineRunNode {

    /** @var string $class */
    public $class = "";

    /** @var string $displayName */
    public $displayName = "";

    /** @var int $durationInMillis */
    public $durationInMillis = 0;

    /** @var \app\Models\PipelineRunNodeedges[] $edges */
    public $edges = [];

    /** @var string $id */
    public $id = "";

    /** @var string $result */
    public $result = "";

    /** @var string $startTime */
    public $startTime = "";

    /** @var string $state */
    public $state = "";

}
