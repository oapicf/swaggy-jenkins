<?php
/**
 * Hudson
 */
namespace app\Models;

/**
 * Hudson
 */
class Hudson {

    /** @var string $class */
    private $class;

    /** @var \app\Models\HudsonassignedLabels[] $assignedLabels */
    private $assignedLabels;

    /** @var string $mode */
    private $mode;

    /** @var string $nodeDescription */
    private $nodeDescription;

    /** @var string $nodeName */
    private $nodeName;

    /** @var int $numExecutors */
    private $numExecutors;

    /** @var string $description */
    private $description;

    /** @var \app\Models\FreeStyleProject[] $jobs */
    private $jobs;

    /** @var \app\Models\AllView $primaryView */
    private $primaryView;

    /** @var bool $quietingDown */
    private $quietingDown;

    /** @var int $slaveAgentPort */
    private $slaveAgentPort;

    /** @var \app\Models\UnlabeledLoadStatistics $unlabeledLoad */
    private $unlabeledLoad;

    /** @var bool $useCrumbs */
    private $useCrumbs;

    /** @var bool $useSecurity */
    private $useSecurity;

    /** @var \app\Models\AllView[] $views */
    private $views;

}
