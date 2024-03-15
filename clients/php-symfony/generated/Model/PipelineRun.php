<?php
/**
 * PipelineRun
 *
 * PHP version 8.1.1
 *
 * @category Class
 * @package  OpenAPI\Server\Model
 * @author   OpenAPI Generator team
 * @link     https://github.com/openapitools/openapi-generator
 */

/**
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 *
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 * Do not edit the class manually.
 */

namespace OpenAPI\Server\Model;

use Symfony\Component\Validator\Constraints as Assert;
use JMS\Serializer\Annotation\Type;
use JMS\Serializer\Annotation\Accessor;
use JMS\Serializer\Annotation\SerializedName;

/**
 * Class representing the PipelineRun model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */

class PipelineRun 
{
        /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $class = null;

    /**
     * @var PipelineRunartifacts[]|null
     * @SerializedName("artifacts")
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\PipelineRunartifacts")
     * })
     * @Type("array<OpenAPI\Server\Model\PipelineRunartifacts>")
     */
    protected ?array $artifacts = null;

    /**
     * @var int|null
     * @SerializedName("durationInMillis")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected ?int $durationInMillis = null;

    /**
     * @var int|null
     * @SerializedName("estimatedDurationInMillis")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected ?int $estimatedDurationInMillis = null;

    /**
     * @var string|null
     * @SerializedName("enQueueTime")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $enQueueTime = null;

    /**
     * @var string|null
     * @SerializedName("endTime")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $endTime = null;

    /**
     * @var string|null
     * @SerializedName("id")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $id = null;

    /**
     * @var string|null
     * @SerializedName("organization")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $organization = null;

    /**
     * @var string|null
     * @SerializedName("pipeline")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $pipeline = null;

    /**
     * @var string|null
     * @SerializedName("result")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $result = null;

    /**
     * @var string|null
     * @SerializedName("runSummary")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $runSummary = null;

    /**
     * @var string|null
     * @SerializedName("startTime")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $startTime = null;

    /**
     * @var string|null
     * @SerializedName("state")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $state = null;

    /**
     * @var string|null
     * @SerializedName("type")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $type = null;

    /**
     * @var string|null
     * @SerializedName("commitId")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $commitId = null;

    /**
     * Constructor
     * @param array|null $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        if (is_array($data)) {
            $this->class = array_key_exists('class', $data) ? $data['class'] : $this->class;
            $this->artifacts = array_key_exists('artifacts', $data) ? $data['artifacts'] : $this->artifacts;
            $this->durationInMillis = array_key_exists('durationInMillis', $data) ? $data['durationInMillis'] : $this->durationInMillis;
            $this->estimatedDurationInMillis = array_key_exists('estimatedDurationInMillis', $data) ? $data['estimatedDurationInMillis'] : $this->estimatedDurationInMillis;
            $this->enQueueTime = array_key_exists('enQueueTime', $data) ? $data['enQueueTime'] : $this->enQueueTime;
            $this->endTime = array_key_exists('endTime', $data) ? $data['endTime'] : $this->endTime;
            $this->id = array_key_exists('id', $data) ? $data['id'] : $this->id;
            $this->organization = array_key_exists('organization', $data) ? $data['organization'] : $this->organization;
            $this->pipeline = array_key_exists('pipeline', $data) ? $data['pipeline'] : $this->pipeline;
            $this->result = array_key_exists('result', $data) ? $data['result'] : $this->result;
            $this->runSummary = array_key_exists('runSummary', $data) ? $data['runSummary'] : $this->runSummary;
            $this->startTime = array_key_exists('startTime', $data) ? $data['startTime'] : $this->startTime;
            $this->state = array_key_exists('state', $data) ? $data['state'] : $this->state;
            $this->type = array_key_exists('type', $data) ? $data['type'] : $this->type;
            $this->commitId = array_key_exists('commitId', $data) ? $data['commitId'] : $this->commitId;
        }
    }

    /**
     * Gets class.
     *
     * @return string|null
     */
    public function getClass(): ?string
    {
        return $this->class;
    }



    /**
     * Sets class.
     *
     * @param string|null $class
     *
     * @return $this
     */
    public function setClass(?string $class = null): self
    {
        $this->class = $class;

        return $this;
    }

    /**
     * Gets artifacts.
     *
     * @return PipelineRunartifacts[]|null
     */
    public function getArtifacts(): ?array
    {
        return $this->artifacts;
    }



    /**
     * Sets artifacts.
     *
     * @param PipelineRunartifacts[]|null $artifacts
     *
     * @return $this
     */
    public function setArtifacts(?array $artifacts = null): self
    {
        $this->artifacts = $artifacts;

        return $this;
    }

    /**
     * Gets durationInMillis.
     *
     * @return int|null
     */
    public function getDurationInMillis(): ?int
    {
        return $this->durationInMillis;
    }



    /**
     * Sets durationInMillis.
     *
     * @param int|null $durationInMillis
     *
     * @return $this
     */
    public function setDurationInMillis(?int $durationInMillis = null): self
    {
        $this->durationInMillis = $durationInMillis;

        return $this;
    }

    /**
     * Gets estimatedDurationInMillis.
     *
     * @return int|null
     */
    public function getEstimatedDurationInMillis(): ?int
    {
        return $this->estimatedDurationInMillis;
    }



    /**
     * Sets estimatedDurationInMillis.
     *
     * @param int|null $estimatedDurationInMillis
     *
     * @return $this
     */
    public function setEstimatedDurationInMillis(?int $estimatedDurationInMillis = null): self
    {
        $this->estimatedDurationInMillis = $estimatedDurationInMillis;

        return $this;
    }

    /**
     * Gets enQueueTime.
     *
     * @return string|null
     */
    public function getEnQueueTime(): ?string
    {
        return $this->enQueueTime;
    }



    /**
     * Sets enQueueTime.
     *
     * @param string|null $enQueueTime
     *
     * @return $this
     */
    public function setEnQueueTime(?string $enQueueTime = null): self
    {
        $this->enQueueTime = $enQueueTime;

        return $this;
    }

    /**
     * Gets endTime.
     *
     * @return string|null
     */
    public function getEndTime(): ?string
    {
        return $this->endTime;
    }



    /**
     * Sets endTime.
     *
     * @param string|null $endTime
     *
     * @return $this
     */
    public function setEndTime(?string $endTime = null): self
    {
        $this->endTime = $endTime;

        return $this;
    }

    /**
     * Gets id.
     *
     * @return string|null
     */
    public function getId(): ?string
    {
        return $this->id;
    }



    /**
     * Sets id.
     *
     * @param string|null $id
     *
     * @return $this
     */
    public function setId(?string $id = null): self
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Gets organization.
     *
     * @return string|null
     */
    public function getOrganization(): ?string
    {
        return $this->organization;
    }



    /**
     * Sets organization.
     *
     * @param string|null $organization
     *
     * @return $this
     */
    public function setOrganization(?string $organization = null): self
    {
        $this->organization = $organization;

        return $this;
    }

    /**
     * Gets pipeline.
     *
     * @return string|null
     */
    public function getPipeline(): ?string
    {
        return $this->pipeline;
    }



    /**
     * Sets pipeline.
     *
     * @param string|null $pipeline
     *
     * @return $this
     */
    public function setPipeline(?string $pipeline = null): self
    {
        $this->pipeline = $pipeline;

        return $this;
    }

    /**
     * Gets result.
     *
     * @return string|null
     */
    public function getResult(): ?string
    {
        return $this->result;
    }



    /**
     * Sets result.
     *
     * @param string|null $result
     *
     * @return $this
     */
    public function setResult(?string $result = null): self
    {
        $this->result = $result;

        return $this;
    }

    /**
     * Gets runSummary.
     *
     * @return string|null
     */
    public function getRunSummary(): ?string
    {
        return $this->runSummary;
    }



    /**
     * Sets runSummary.
     *
     * @param string|null $runSummary
     *
     * @return $this
     */
    public function setRunSummary(?string $runSummary = null): self
    {
        $this->runSummary = $runSummary;

        return $this;
    }

    /**
     * Gets startTime.
     *
     * @return string|null
     */
    public function getStartTime(): ?string
    {
        return $this->startTime;
    }



    /**
     * Sets startTime.
     *
     * @param string|null $startTime
     *
     * @return $this
     */
    public function setStartTime(?string $startTime = null): self
    {
        $this->startTime = $startTime;

        return $this;
    }

    /**
     * Gets state.
     *
     * @return string|null
     */
    public function getState(): ?string
    {
        return $this->state;
    }



    /**
     * Sets state.
     *
     * @param string|null $state
     *
     * @return $this
     */
    public function setState(?string $state = null): self
    {
        $this->state = $state;

        return $this;
    }

    /**
     * Gets type.
     *
     * @return string|null
     */
    public function getType(): ?string
    {
        return $this->type;
    }



    /**
     * Sets type.
     *
     * @param string|null $type
     *
     * @return $this
     */
    public function setType(?string $type = null): self
    {
        $this->type = $type;

        return $this;
    }

    /**
     * Gets commitId.
     *
     * @return string|null
     */
    public function getCommitId(): ?string
    {
        return $this->commitId;
    }



    /**
     * Sets commitId.
     *
     * @param string|null $commitId
     *
     * @return $this
     */
    public function setCommitId(?string $commitId = null): self
    {
        $this->commitId = $commitId;

        return $this;
    }
}


