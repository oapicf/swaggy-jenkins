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
    public $class = "";

    /** @var \app\Models\HudsonassignedLabels[] $assignedLabels */
    public $assignedLabels = [];

    /** @var string $mode */
    public $mode = "";

    /** @var string $nodeDescription */
    public $nodeDescription = "";

    /** @var string $nodeName */
    public $nodeName = "";

    /** @var int $numExecutors */
    public $numExecutors = 0;

    /** @var string $description */
    public $description = "";

    /** @var \app\Models\FreeStyleProject[] $jobs */
    public $jobs = [];

    /** @var \app\Models\AllView $primaryView */
    public $primaryView;

    /** @var bool $quietingDown */
    public $quietingDown = false;

    /** @var int $slaveAgentPort */
    public $slaveAgentPort = 0;

    /** @var \app\Models\UnlabeledLoadStatistics $unlabeledLoad */
    public $unlabeledLoad;

    /** @var bool $useCrumbs */
    public $useCrumbs = false;

    /** @var bool $useSecurity */
    public $useSecurity = false;

    /** @var \app\Models\AllView[] $views */
    public $views = [];

}
