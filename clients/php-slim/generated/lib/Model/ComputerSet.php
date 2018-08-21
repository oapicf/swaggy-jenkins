<?php
/**
 * ComputerSet
 */
namespace OpenAPIServer\Model;

/**
 * ComputerSet
 */
class ComputerSet {

    /** @var string $class */
    private $class;

    /** @var int $busyExecutors */
    private $busyExecutors;

    /** @var \OpenAPIServer\Model\HudsonMasterComputer[] $computer */
    private $computer;

    /** @var string $displayName */
    private $displayName;

    /** @var int $totalExecutors */
    private $totalExecutors;

}
