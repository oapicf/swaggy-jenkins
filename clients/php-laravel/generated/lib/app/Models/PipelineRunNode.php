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
    private $class;

    /** @var string $displayName */
    private $displayName;

    /** @var int $durationInMillis */
    private $durationInMillis;

    /** @var \app\Models\PipelineRunNodeedges[] $edges */
    private $edges;

    /** @var string $id */
    private $id;

    /** @var string $result */
    private $result;

    /** @var string $startTime */
    private $startTime;

    /** @var string $state */
    private $state;

}
