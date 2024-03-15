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
    public $class = "";

    /** @var int $busyExecutors */
    public $busyExecutors = 0;

    /** @var \app\Models\HudsonMasterComputer[] $computer */
    public $computer = [];

    /** @var string $displayName */
    public $displayName = "";

    /** @var int $totalExecutors */
    public $totalExecutors = 0;

}
