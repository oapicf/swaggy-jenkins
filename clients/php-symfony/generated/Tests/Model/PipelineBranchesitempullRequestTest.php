<?php
/**
 * PipelineBranchesitempullRequestTest
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

use OpenAPI\Server\Model\PipelineBranchesitempullRequest;
use PHPUnit\Framework\MockObject\MockObject;
use PHPUnit\Framework\TestCase;

/**
 * PipelineBranchesitempullRequestTest Class Doc Comment
 *
 * @category    Class
 * @description PipelineBranchesitempullRequest
 * @package     OpenAPI\Server\Tests\Model
 * @author      openapi-generator contributors
 * @link        https://github.com/openapitools/openapi-generator
 * @coversDefaultClass \OpenAPI\Server\Model\PipelineBranchesitempullRequest
 */
class PipelineBranchesitempullRequestTest extends TestCase
{
    protected PipelineBranchesitempullRequest|MockObject $object;

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
        $this->object = $this->getMockBuilder(PipelineBranchesitempullRequest::class)->getMockForAbstractClass();
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
        $this->assertTrue(class_exists(PipelineBranchesitempullRequest::class));
        $this->assertInstanceOf(PipelineBranchesitempullRequest::class, $this->object);
    }

    /**
     * Test attribute "links"
     *
     * @group unit
     * @small
     */
    public function testPropertyLinks(): void
    {
        $this->markTestSkipped('Test for property links not implemented');
    }

    /**
     * Test attribute "author"
     *
     * @group unit
     * @small
     */
    public function testPropertyAuthor(): void
    {
        $this->markTestSkipped('Test for property author not implemented');
    }

    /**
     * Test attribute "id"
     *
     * @group unit
     * @small
     */
    public function testPropertyId(): void
    {
        $this->markTestSkipped('Test for property id not implemented');
    }

    /**
     * Test attribute "title"
     *
     * @group unit
     * @small
     */
    public function testPropertyTitle(): void
    {
        $this->markTestSkipped('Test for property title not implemented');
    }

    /**
     * Test attribute "url"
     *
     * @group unit
     * @small
     */
    public function testPropertyUrl(): void
    {
        $this->markTestSkipped('Test for property url not implemented');
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
}
