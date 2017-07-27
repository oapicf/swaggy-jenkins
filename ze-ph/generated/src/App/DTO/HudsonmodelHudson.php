<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class HudsonmodelHudson 
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="assignedLabels", nullable=true)
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\HudsonmodelHudsonassignedLabels::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\HudsonmodelHudsonassignedLabels::class}}
     * }})
     * @var \App\DTO\HudsonmodelHudsonassignedLabels[]
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
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\HudsonmodelFreeStyleProject::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\HudsonmodelFreeStyleProject::class}}
     * }})
     * @var \App\DTO\HudsonmodelFreeStyleProject[]
     */
    public $jobs;
    /**
     * @DTA\Data(field="primaryView", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\HudsonmodelAllView::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\HudsonmodelAllView::class})
     * @var \App\DTO\HudsonmodelAllView
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
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\JenkinsmodelUnlabeledLoadStatistics::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\JenkinsmodelUnlabeledLoadStatistics::class})
     * @var \App\DTO\JenkinsmodelUnlabeledLoadStatistics
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
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\HudsonmodelAllView::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\HudsonmodelAllView::class}}
     * }})
     * @var \App\DTO\HudsonmodelAllView[]
     */
    public $views;
}

