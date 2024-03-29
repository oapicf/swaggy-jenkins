<?php
/**
 * GithubContentTest
 *
 * PHP version 8.1.1
 *
 * @category Class
 * @package  OpenAPI\Server\Tests\Model
 * @author   openapi-generator contributors
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
 * Please update the test case below to test the model.
 */

namespace OpenAPI\Server\Tests\Model;

use OpenAPI\Server\Model\GithubContent;
use PHPUnit\Framework\MockObject\MockObject;
use PHPUnit\Framework\TestCase;

/**
 * GithubContentTest Class Doc Comment
 *
 * @category    Class
 * @description GithubContent
 * @package     OpenAPI\Server\Tests\Model
 * @author      openapi-generator contributors
 * @link        https://github.com/openapitools/openapi-generator
 * @coversDefaultClass \OpenAPI\Server\Model\GithubContent
 */
class GithubContentTest extends TestCase
{
    protected GithubContent|MockObject $object;

    /**
     * Setup before running any test case
     */
    public static function setUpBeforeClass(): void
    {
    }

    /**
     * Setup before running each test case
     */
    public function setUp(): void
    {
        $this->object = $this->getMockBuilder(GithubContent::class)->getMockForAbstractClass();
    }

    /**
     * Clean up after running each test case
     */
    public function tearDown(): void
    {
    }

    /**
     * Clean up after running all test cases
     */
    public static function tearDownAfterClass(): void
    {
    }

    /**
     * @group integration
     * @small
     */
    public function testTestClassExists(): void
    {
        $this->assertTrue(class_exists(GithubContent::class));
        $this->assertInstanceOf(GithubContent::class, $this->object);
    }

    /**
     * Test attribute "name"
     *
     * @group unit
     * @small
     */
    public function testPropertyName(): void
    {
        $this->markTestSkipped('Test for property name not implemented');
    }

    /**
     * Test attribute "sha"
     *
     * @group unit
     * @small
     */
    public function testPropertySha(): void
    {
        $this->markTestSkipped('Test for property sha not implemented');
    }

    /**
     * Test attribute "class"
     *
     * @group unit
     * @small
     */
    public function testPropertyClass(): void
    {
        $this->markTestSkipped('Test for property class not implemented');
    }

    /**
     * Test attribute "repo"
     *
     * @group unit
     * @small
     */
    public function testPropertyRepo(): void
    {
        $this->markTestSkipped('Test for property repo not implemented');
    }

    /**
     * Test attribute "size"
     *
     * @group unit
     * @small
     */
    public function testPropertySize(): void
    {
        $this->markTestSkipped('Test for property size not implemented');
    }

    /**
     * Test attribute "owner"
     *
     * @group unit
     * @small
     */
    public function testPropertyOwner(): void
    {
        $this->markTestSkipped('Test for property owner not implemented');
    }

    /**
     * Test attribute "path"
     *
     * @group unit
     * @small
     */
    public function testPropertyPath(): void
    {
        $this->markTestSkipped('Test for property path not implemented');
    }

    /**
     * Test attribute "base64Data"
     *
     * @group unit
     * @small
     */
    public function testPropertyBase64Data(): void
    {
        $this->markTestSkipped('Test for property base64Data not implemented');
    }
}
