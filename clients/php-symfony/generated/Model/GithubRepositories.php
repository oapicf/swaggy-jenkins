<?php
/**
 * GithubRepositories
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
 * Class representing the GithubRepositories model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */

class GithubRepositories 
{
        /**
     * @var string|null
     * @SerializedName("_class")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $class = null;

    /**
     * @var GithubRepositorieslinks|null
     * @SerializedName("_links")
     * @Assert\Type("OpenAPI\Server\Model\GithubRepositorieslinks")
     * @Type("OpenAPI\Server\Model\GithubRepositorieslinks")
     */
    protected ?GithubRepositorieslinks $links = null;

    /**
     * @var GithubRepository[]|null
     * @SerializedName("items")
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\GithubRepository")
     * })
     * @Type("array<OpenAPI\Server\Model\GithubRepository>")
     */
    protected ?array $items = null;

    /**
     * @var int|null
     * @SerializedName("lastPage")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected ?int $lastPage = null;

    /**
     * @var int|null
     * @SerializedName("nextPage")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected ?int $nextPage = null;

    /**
     * @var int|null
     * @SerializedName("pageSize")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected ?int $pageSize = null;

    /**
     * Constructor
     * @param array|null $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        if (is_array($data)) {
            $this->class = array_key_exists('class', $data) ? $data['class'] : $this->class;
            $this->links = array_key_exists('links', $data) ? $data['links'] : $this->links;
            $this->items = array_key_exists('items', $data) ? $data['items'] : $this->items;
            $this->lastPage = array_key_exists('lastPage', $data) ? $data['lastPage'] : $this->lastPage;
            $this->nextPage = array_key_exists('nextPage', $data) ? $data['nextPage'] : $this->nextPage;
            $this->pageSize = array_key_exists('pageSize', $data) ? $data['pageSize'] : $this->pageSize;
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
     * @return GithubRepositorieslinks|null
     */
    public function getLinks(): ?GithubRepositorieslinks
    {
        return $this->links;
    }



    /**
     * Sets links.
     *
     * @param GithubRepositorieslinks|null $links
     *
     * @return $this
     */
    public function setLinks(?GithubRepositorieslinks $links = null): self
    {
        $this->links = $links;

        return $this;
    }

    /**
     * Gets items.
     *
     * @return GithubRepository[]|null
     */
    public function getItems(): ?array
    {
        return $this->items;
    }



    /**
     * Sets items.
     *
     * @param GithubRepository[]|null $items
     *
     * @return $this
     */
    public function setItems(?array $items = null): self
    {
        $this->items = $items;

        return $this;
    }

    /**
     * Gets lastPage.
     *
     * @return int|null
     */
    public function getLastPage(): ?int
    {
        return $this->lastPage;
    }



    /**
     * Sets lastPage.
     *
     * @param int|null $lastPage
     *
     * @return $this
     */
    public function setLastPage(?int $lastPage = null): self
    {
        $this->lastPage = $lastPage;

        return $this;
    }

    /**
     * Gets nextPage.
     *
     * @return int|null
     */
    public function getNextPage(): ?int
    {
        return $this->nextPage;
    }



    /**
     * Sets nextPage.
     *
     * @param int|null $nextPage
     *
     * @return $this
     */
    public function setNextPage(?int $nextPage = null): self
    {
        $this->nextPage = $nextPage;

        return $this;
    }

    /**
     * Gets pageSize.
     *
     * @return int|null
     */
    public function getPageSize(): ?int
    {
        return $this->pageSize;
    }



    /**
     * Sets pageSize.
     *
     * @param int|null $pageSize
     *
     * @return $this
     */
    public function setPageSize(?int $pageSize = null): self
    {
        $this->pageSize = $pageSize;

        return $this;
    }
}


