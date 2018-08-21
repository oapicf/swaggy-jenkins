<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class Hudson
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="assignedLabels", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\HudsonassignedLabels::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\HudsonassignedLabels::class}}
     * }})
     * @var \App\DTO\HudsonassignedLabels[]
     */
    public $assigned_labels;
    /**
     * @DTA\Data(field="mode", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $mode;
    /**
     * @DTA\Data(field="nodeDescription", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $node_description;
    /**
     * @DTA\Data(field="nodeName", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $node_name;
    /**
     * @DTA\Data(field="numExecutors", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $num_executors;
    /**
     * @DTA\Data(field="description", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $description;
    /**
     * @DTA\Data(field="jobs", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\FreeStyleProject::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\FreeStyleProject::class}}
     * }})
     * @var \App\DTO\FreeStyleProject[]
     */
    public $jobs;
    /**
     * @DTA\Data(field="primaryView", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\AllView::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\AllView::class})
     * @var \App\DTO\AllView
     */
    public $primary_view;
    /**
     * @DTA\Data(field="quietingDown", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $quieting_down;
    /**
     * @DTA\Data(field="slaveAgentPort", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $slave_agent_port;
    /**
     * @DTA\Data(field="unlabeledLoad", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\UnlabeledLoadStatistics::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\UnlabeledLoadStatistics::class})
     * @var \App\DTO\UnlabeledLoadStatistics
     */
    public $unlabeled_load;
    /**
     * @DTA\Data(field="useCrumbs", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $use_crumbs;
    /**
     * @DTA\Data(field="useSecurity", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $use_security;
    /**
     * @DTA\Data(field="views", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\AllView::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\AllView::class}}
     * }})
     * @var \App\DTO\AllView[]
     */
    public $views;
}
