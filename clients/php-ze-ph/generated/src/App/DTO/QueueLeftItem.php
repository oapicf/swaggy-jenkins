<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class QueueLeftItem
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="actions", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\CauseAction::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\CauseAction::class}}
     * }})
     * @var \App\DTO\CauseAction[]
     */
    public $actions;
    /**
     * @DTA\Data(field="blocked", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $blocked;
    /**
     * @DTA\Data(field="buildable", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $buildable;
    /**
     * @DTA\Data(field="id", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $id;
    /**
     * @DTA\Data(field="inQueueSince", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $in_queue_since;
    /**
     * @DTA\Data(field="params", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $params;
    /**
     * @DTA\Data(field="stuck", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $stuck;
    /**
     * @DTA\Data(field="task", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleProject::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\FreeStyleProject::class})
     * @var \App\DTO\FreeStyleProject
     */
    public $task;
    /**
     * @DTA\Data(field="url", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $url;
    /**
     * @DTA\Data(field="why", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $why;
    /**
     * @DTA\Data(field="cancelled", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $cancelled;
    /**
     * @DTA\Data(field="executable", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\FreeStyleBuild::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\FreeStyleBuild::class})
     * @var \App\DTO\FreeStyleBuild
     */
    public $executable;
}
