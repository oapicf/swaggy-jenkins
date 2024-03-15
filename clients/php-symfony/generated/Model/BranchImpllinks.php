<?php
/**
 * BranchImpllinks
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
 * Class representing the BranchImpllinks model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */

class BranchImpllinks 
{
        /**
     * @var Link|null
     * @SerializedName("self")
     * @Assert\Type("OpenAPI\Server\Model\Link")
     * @Type("OpenAPI\Server\Model\Link")
     */
    protected ?Link $self = null;

    /**
     * @var Link|null
     * @SerializedName("actions")
     * @Assert\Type("OpenAPI\Server\Model\Link")
     * @Type("OpenAPI\Server\Model\Link")
     */
    protected ?Link $actions = null;

    /**
     * @var Link|null
     * @SerializedName("runs")
     * @Assert\Type("OpenAPI\Server\Model\Link")
     * @Type("OpenAPI\Server\Model\Link")
     */
    protected ?Link $runs = null;

    /**
     * @var Link|null
     * @SerializedName("queue")
     * @Assert\Type("OpenAPI\Server\Model\Link")
     * @Type("OpenAPI\Server\Model\Link")
     */
    protected ?Link $queue = null;

    /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $class = null;

    /**
     * Constructor
     * @param array|null $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        if (is_array($data)) {
            $this->self = array_key_exists('self', $data) ? $data['self'] : $this->self;
            $this->actions = array_key_exists('actions', $data) ? $data['actions'] : $this->actions;
            $this->runs = array_key_exists('runs', $data) ? $data['runs'] : $this->runs;
            $this->queue = array_key_exists('queue', $data) ? $data['queue'] : $this->queue;
            $this->class = array_key_exists('class', $data) ? $data['class'] : $this->class;
        }
    }

    /**
     * Gets self.
     *
     * @return Link|null
     */
    public function getSelf(): ?Link
    {
        return $this->self;
    }



    /**
     * Sets self.
     *
     * @param Link|null $self
     *
     * @return $this
     */
    public function setSelf(?Link $self = null): self
    {
        $this->self = $self;

        return $this;
    }

    /**
     * Gets actions.
     *
     * @return Link|null
     */
    public function getActions(): ?Link
    {
        return $this->actions;
    }



    /**
     * Sets actions.
     *
     * @param Link|null $actions
     *
     * @return $this
     */
    public function setActions(?Link $actions = null): self
    {
        $this->actions = $actions;

        return $this;
    }

    /**
     * Gets runs.
     *
     * @return Link|null
     */
    public function getRuns(): ?Link
    {
        return $this->runs;
    }



    /**
     * Sets runs.
     *
     * @param Link|null $runs
     *
     * @return $this
     */
    public function setRuns(?Link $runs = null): self
    {
        $this->runs = $runs;

        return $this;
    }

    /**
     * Gets queue.
     *
     * @return Link|null
     */
    public function getQueue(): ?Link
    {
        return $this->queue;
    }



    /**
     * Sets queue.
     *
     * @param Link|null $queue
     *
     * @return $this
     */
    public function setQueue(?Link $queue = null): self
    {
        $this->queue = $queue;

        return $this;
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
}


