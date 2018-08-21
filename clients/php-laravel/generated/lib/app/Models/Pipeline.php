<?php
/**
 * Pipeline
 */
namespace app\Models;

/**
 * Pipeline
 */
class Pipeline {

    /** @var string $_class */
    private $_class;

    /** @var string $organization */
    private $organization;

    /** @var string $name */
    private $name;

    /** @var string $display_name */
    private $display_name;

    /** @var string $full_name */
    private $full_name;

    /** @var int $weather_score */
    private $weather_score;

    /** @var int $estimated_duration_in_millis */
    private $estimated_duration_in_millis;

    /** @var \app\Models\PipelinelatestRun $latest_run */
    private $latest_run;

}
