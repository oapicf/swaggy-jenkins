<?php
/**
 * Hudson
 */
namespace OpenAPIServer\Model;

/**
 * Hudson
 */
class Hudson {

    /** @var string $class */
    private $class;

    /** @var \OpenAPIServer\Model\HudsonassignedLabels[] $assignedLabels */
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

    /** @var \OpenAPIServer\Model\FreeStyleProject[] $jobs */
    private $jobs;

    /** @var \OpenAPIServer\Model\AllView $primaryView */
    private $primaryView;

    /** @var bool $quietingDown */
    private $quietingDown;

    /** @var int $slaveAgentPort */
    private $slaveAgentPort;

    /** @var \OpenAPIServer\Model\UnlabeledLoadStatistics $unlabeledLoad */
    private $unlabeledLoad;

    /** @var bool $useCrumbs */
    private $useCrumbs;

    /** @var bool $useSecurity */
    private $useSecurity;

    /** @var \OpenAPIServer\Model\AllView[] $views */
    private $views;

}
