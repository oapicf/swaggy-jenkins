<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ListView
{
    /**
     * @DTA\Data(field="_class", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $_class;
    /**
     * @DTA\Data(field="description", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $description;
    /**
     * @DTA\Data(field="jobs", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\FreeStyleProject::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\FreeStyleProject::class}}
     * }})
     * @var \App\DTO\FreeStyleProject[]
     */
    public $jobs;
    /**
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $name;
    /**
     * @DTA\Data(field="url", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $url;
}
