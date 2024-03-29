<?php
/**
 * GithubRepository
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
 * Class representing the GithubRepository model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */

class GithubRepository 
{
        /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $class = null;

    /**
     * @var GithubRepositorylinks|null
     * @SerializedName("_links")
     * @Assert\Type("OpenAPI\Server\Model\GithubRepositorylinks")
     * @Type("OpenAPI\Server\Model\GithubRepositorylinks")
     */
    protected ?GithubRepositorylinks $links = null;

    /**
     * @var string|null
     * @SerializedName("defaultBranch")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $defaultBranch = null;

    /**
     * @var string|null
     * @SerializedName("description")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $description = null;

    /**
     * @var string|null
     * @SerializedName("name")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $name = null;

    /**
     * @var GithubRepositorypermissions|null
     * @SerializedName("permissions")
     * @Assert\Type("OpenAPI\Server\Model\GithubRepositorypermissions")
     * @Type("OpenAPI\Server\Model\GithubRepositorypermissions")
     */
    protected ?GithubRepositorypermissions $permissions = null;

    /**
     * @var bool|null
     * @SerializedName("private")
     * @Assert\Type("bool")
     * @Type("bool")
     */
    protected ?bool $private = null;

    /**
     * @var string|null
     * @SerializedName("fullName")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $fullName = null;

    /**
     * Constructor
     * @param array|null $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        if (is_array($data)) {
            $this->class = array_key_exists('class', $data) ? $data['class'] : $this->class;
            $this->links = array_key_exists('links', $data) ? $data['links'] : $this->links;
            $this->defaultBranch = array_key_exists('defaultBranch', $data) ? $data['defaultBranch'] : $this->defaultBranch;
            $this->description = array_key_exists('description', $data) ? $data['description'] : $this->description;
            $this->name = array_key_exists('name', $data) ? $data['name'] : $this->name;
            $this->permissions = array_key_exists('permissions', $data) ? $data['permissions'] : $this->permissions;
            $this->private = array_key_exists('private', $data) ? $data['private'] : $this->private;
            $this->fullName = array_key_exists('fullName', $data) ? $data['fullName'] : $this->fullName;
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
     * Gets links.
     *
     * @return GithubRepositorylinks|null
     */
    public function getLinks(): ?GithubRepositorylinks
    {
        return $this->links;
    }



    /**
     * Sets links.
     *
     * @param GithubRepositorylinks|null $links
     *
     * @return $this
     */
    public function setLinks(?GithubRepositorylinks $links = null): self
    {
        $this->links = $links;

        return $this;
    }

    /**
     * Gets defaultBranch.
     *
     * @return string|null
     */
    public function getDefaultBranch(): ?string
    {
        return $this->defaultBranch;
    }



    /**
     * Sets defaultBranch.
     *
     * @param string|null $defaultBranch
     *
     * @return $this
     */
    public function setDefaultBranch(?string $defaultBranch = null): self
    {
        $this->defaultBranch = $defaultBranch;

        return $this;
    }

    /**
     * Gets description.
     *
     * @return string|null
     */
    public function getDescription(): ?string
    {
        return $this->description;
    }



    /**
     * Sets description.
     *
     * @param string|null $description
     *
     * @return $this
     */
    public function setDescription(?string $description = null): self
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Gets name.
     *
     * @return string|null
     */
    public function getName(): ?string
    {
        return $this->name;
    }



    /**
     * Sets name.
     *
     * @param string|null $name
     *
     * @return $this
     */
    public function setName(?string $name = null): self
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Gets permissions.
     *
     * @return GithubRepositorypermissions|null
     */
    public function getPermissions(): ?GithubRepositorypermissions
    {
        return $this->permissions;
    }



    /**
     * Sets permissions.
     *
     * @param GithubRepositorypermissions|null $permissions
     *
     * @return $this
     */
    public function setPermissions(?GithubRepositorypermissions $permissions = null): self
    {
        $this->permissions = $permissions;

        return $this;
    }

    /**
     * Gets private.
     *
     * @return bool|null
     */
    public function isPrivate(): ?bool
    {
        return $this->private;
    }



    /**
     * Sets private.
     *
     * @param bool|null $private
     *
     * @return $this
     */
    public function setPrivate(?bool $private = null): self
    {
        $this->private = $private;

        return $this;
    }

    /**
     * Gets fullName.
     *
     * @return string|null
     */
    public function getFullName(): ?string
    {
        return $this->fullName;
    }



    /**
     * Sets fullName.
     *
     * @param string|null $fullName
     *
     * @return $this
     */
    public function setFullName(?string $fullName = null): self
    {
        $this->fullName = $fullName;

        return $this;
    }
}


