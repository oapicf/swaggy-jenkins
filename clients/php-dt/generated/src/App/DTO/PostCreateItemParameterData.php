<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for postCreateItem
 */
class PostCreateItemParameterData
{
    /**
     * Set to &#39;copy&#39; for copying an existing job
     * @DTA\Data(subset="query", field="mode", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $mode;

    /**
     * Name of the new job
     * @DTA\Data(subset="query", field="name")
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $name;

    /**
     * CSRF protection token
     * @DTA\Data(subset="header", field="Jenkins-Crumb", nullable=true)
     * @DTA\Strategy(subset="header", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="header", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $jenkins_crumb;

    /**
     * Existing job to copy from
     * @DTA\Data(subset="query", field="from", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $from;

    /**
     * Content type header application/xml
     * @DTA\Data(subset="header", field="Content-Type", nullable=true)
     * @DTA\Strategy(subset="header", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="header", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $content_type;

}
