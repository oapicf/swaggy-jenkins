<?php
/**
 * InputStepImpl
 */
namespace app\Models;

/**
 * InputStepImpl
 */
class InputStepImpl {

    /** @var string $class */
    public $class = "";

    /** @var \app\Models\InputStepImpllinks $links */
    public $links;

    /** @var string $id */
    public $id = "";

    /** @var string $message */
    public $message = "";

    /** @var string $ok */
    public $ok = "";

    /** @var \app\Models\StringParameterDefinition[] $parameters */
    public $parameters = [];

    /** @var string $submitter */
    public $submitter = "";

}
