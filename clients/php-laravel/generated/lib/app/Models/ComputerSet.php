<?php
/**
 * ComputerSet
 */
namespace app\Models;

/**
 * ComputerSet
 */
class ComputerSet {

    /** @var string $_class */
    private $_class;

    /** @var int $busy_executors */
    private $busy_executors;

    /** @var \app\Models\HudsonMasterComputer[] $computer */
    private $computer;

    /** @var string $display_name */
    private $display_name;

    /** @var int $total_executors */
    private $total_executors;

}
