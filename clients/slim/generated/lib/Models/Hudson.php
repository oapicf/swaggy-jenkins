<?php
/*
 * Hudson
 */
namespace \Models;

/*
 * Hudson
 */
class Hudson {
    /* @var string $class  */
    private $class;
/* @var \\Models\HudsonassignedLabels[] $assignedLabels  */
    private $assignedLabels;
/* @var string $mode  */
    private $mode;
/* @var string $nodeDescription  */
    private $nodeDescription;
/* @var string $nodeName  */
    private $nodeName;
/* @var int $numExecutors  */
    private $numExecutors;
/* @var string $description  */
    private $description;
/* @var \\Models\FreeStyleProject[] $jobs  */
    private $jobs;
/* @var \\Models\AllView $primaryView  */
    private $primaryView;
/* @var Bool $quietingDown  */
    private $quietingDown;
/* @var int $slaveAgentPort  */
    private $slaveAgentPort;
/* @var \\Models\UnlabeledLoadStatistics $unlabeledLoad  */
    private $unlabeledLoad;
/* @var Bool $useCrumbs  */
    private $useCrumbs;
/* @var Bool $useSecurity  */
    private $useSecurity;
/* @var \\Models\AllView[] $views  */
    private $views;
}
