<?php
/**
 * PipelineRunImpllinks
 *
 * PHP version 5
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
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
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
use JMS\Serializer\Annotation\SerializedName;

/**
 * Class representing the PipelineRunImpllinks model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class PipelineRunImpllinks 
{
        /**
     * @var OpenAPI\Server\Model\Link|null
     * @SerializedName("nodes")
     * @Assert\Type("OpenAPI\Server\Model\Link")
     * @Type("OpenAPI\Server\Model\Link")
     */
    protected $nodes;

    /**
     * @var OpenAPI\Server\Model\Link|null
     * @SerializedName("log")
     * @Assert\Type("OpenAPI\Server\Model\Link")
     * @Type("OpenAPI\Server\Model\Link")
     */
    protected $log;

    /**
     * @var OpenAPI\Server\Model\Link|null
     * @SerializedName("self")
     * @Assert\Type("OpenAPI\Server\Model\Link")
     * @Type("OpenAPI\Server\Model\Link")
     */
    protected $self;

    /**
     * @var OpenAPI\Server\Model\Link|null
     * @SerializedName("actions")
     * @Assert\Type("OpenAPI\Server\Model\Link")
     * @Type("OpenAPI\Server\Model\Link")
     */
    protected $actions;

    /**
     * @var OpenAPI\Server\Model\Link|null
     * @SerializedName("steps")
     * @Assert\Type("OpenAPI\Server\Model\Link")
     * @Type("OpenAPI\Server\Model\Link")
     */
    protected $steps;

    /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $class;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->nodes = isset($data['nodes']) ? $data['nodes'] : null;
        $this->log = isset($data['log']) ? $data['log'] : null;
        $this->self = isset($data['self']) ? $data['self'] : null;
        $this->actions = isset($data['actions']) ? $data['actions'] : null;
        $this->steps = isset($data['steps']) ? $data['steps'] : null;
        $this->class = isset($data['class']) ? $data['class'] : null;
    }

    /**
     * Gets nodes.
     *
     * @return OpenAPI\Server\Model\Link|null
     */
    public function getNodes()
    {
        return $this->nodes;
    }

    /**
     * Sets nodes.
     *
     * @param OpenAPI\Server\Model\Link|null $nodes
     *
     * @return $this
     */
    public function setNodes(Link $nodes = null)
    {
        $this->nodes = $nodes;

        return $this;
    }

    /**
     * Gets log.
     *
     * @return OpenAPI\Server\Model\Link|null
     */
    public function getLog()
    {
        return $this->log;
    }

    /**
     * Sets log.
     *
     * @param OpenAPI\Server\Model\Link|null $log
     *
     * @return $this
     */
    public function setLog(Link $log = null)
    {
        $this->log = $log;

        return $this;
    }

    /**
     * Gets self.
     *
     * @return OpenAPI\Server\Model\Link|null
     */
    public function getSelf()
    {
        return $this->self;
    }

    /**
     * Sets self.
     *
     * @param OpenAPI\Server\Model\Link|null $self
     *
     * @return $this
     */
    public function setSelf(Link $self = null)
    {
        $this->self = $self;

        return $this;
    }

    /**
     * Gets actions.
     *
     * @return OpenAPI\Server\Model\Link|null
     */
    public function getActions()
    {
        return $this->actions;
    }

    /**
     * Sets actions.
     *
     * @param OpenAPI\Server\Model\Link|null $actions
     *
     * @return $this
     */
    public function setActions(Link $actions = null)
    {
        $this->actions = $actions;

        return $this;
    }

    /**
     * Gets steps.
     *
     * @return OpenAPI\Server\Model\Link|null
     */
    public function getSteps()
    {
        return $this->steps;
    }

    /**
     * Sets steps.
     *
     * @param OpenAPI\Server\Model\Link|null $steps
     *
     * @return $this
     */
    public function setSteps(Link $steps = null)
    {
        $this->steps = $steps;

        return $this;
    }

    /**
     * Gets class.
     *
     * @return string|null
     */
    public function getClass()
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
    public function setClass($class = null)
    {
        $this->class = $class;

        return $this;
    }
}


