<?php
/**
 * Pipeline
 */
namespace OpenAPIServer\Model;

/**
 * Pipeline
 */
class Pipeline {

    /** @var string $class */
    private $class;

    /** @var string $organization */
    private $organization;

    /** @var string $name */
    private $name;

    /** @var string $displayName */
    private $displayName;

    /** @var string $fullName */
    private $fullName;

    /** @var int $weatherScore */
    private $weatherScore;

    /** @var int $estimatedDurationInMillis */
    private $estimatedDurationInMillis;

    /** @var \OpenAPIServer\Model\PipelinelatestRun $latestRun */
    private $latestRun;

}
