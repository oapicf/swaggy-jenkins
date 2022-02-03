<?php
/**
 * ComputerSet
 */
namespace app\Models;

/**
 * ComputerSet
 */
class ComputerSet {

    /** @var string $class */
    private $class;

    /** @var int $busyExecutors */
    private $busyExecutors;

    /** @var \app\Models\HudsonMasterComputer[] $computer */
    private $computer;

    /** @var string $displayName */
    private $displayName;

    /** @var int $totalExecutors */
    private $totalExecutors;

}
