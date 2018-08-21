<?php
/**
 * Hudson
 */
namespace app\Models;

/**
 * Hudson
 */
class Hudson {

    /** @var string $_class */
    private $_class;

    /** @var \app\Models\HudsonassignedLabels[] $assigned_labels */
    private $assigned_labels;

    /** @var string $mode */
    private $mode;

    /** @var string $node_description */
    private $node_description;

    /** @var string $node_name */
    private $node_name;

    /** @var int $num_executors */
    private $num_executors;

    /** @var string $description */
    private $description;

    /** @var \app\Models\FreeStyleProject[] $jobs */
    private $jobs;

    /** @var \app\Models\AllView $primary_view */
    private $primary_view;

    /** @var bool $quieting_down */
    private $quieting_down;

    /** @var int $slave_agent_port */
    private $slave_agent_port;

    /** @var \app\Models\UnlabeledLoadStatistics $unlabeled_load */
    private $unlabeled_load;

    /** @var bool $use_crumbs */
    private $use_crumbs;

    /** @var bool $use_security */
    private $use_security;

    /** @var \app\Models\AllView[] $views */
    private $views;

}
