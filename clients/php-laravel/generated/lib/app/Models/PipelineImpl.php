<?php
/**
 * PipelineImpl
 */
namespace app\Models;

/**
 * PipelineImpl
 */
class PipelineImpl {

    /** @var string $_class */
    private $_class;

    /** @var string $display_name */
    private $display_name;

    /** @var int $estimated_duration_in_millis */
    private $estimated_duration_in_millis;

    /** @var string $full_name */
    private $full_name;

    /** @var string $latest_run */
    private $latest_run;

    /** @var string $name */
    private $name;

    /** @var string $organization */
    private $organization;

    /** @var int $weather_score */
    private $weather_score;

    /** @var \app\Models\PipelineImpllinks $_links */
    private $_links;

}
