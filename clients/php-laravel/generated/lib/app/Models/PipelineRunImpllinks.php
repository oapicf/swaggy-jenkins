<?php
/**
 * PipelineRunImpllinks
 */
namespace app\Models;

/**
 * PipelineRunImpllinks
 */
class PipelineRunImpllinks {

    /** @var \app\Models\Link $nodes */
    public $nodes;

    /** @var \app\Models\Link $log */
    public $log;

    /** @var \app\Models\Link $self */
    public $self;

    /** @var \app\Models\Link $actions */
    public $actions;

    /** @var \app\Models\Link $steps */
    public $steps;

    /** @var string $class */
    public $class = "";

}
