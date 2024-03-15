<?php
/**
 * HudsonMasterComputerexecutors
 */
namespace app\Models;

/**
 * HudsonMasterComputerexecutors
 */
class HudsonMasterComputerexecutors {

    /** @var \app\Models\FreeStyleBuild $currentExecutable */
    public $currentExecutable;

    /** @var bool $idle */
    public $idle = false;

    /** @var bool $likelyStuck */
    public $likelyStuck = false;

    /** @var int $number */
    public $number = 0;

    /** @var int $progress */
    public $progress = 0;

    /** @var string $class */
    public $class = "";

}
