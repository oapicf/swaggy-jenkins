<?php
/**
 * GithubScmTest
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

use OpenAPI\Server\Model\GithubScm;
use PHPUnit\Framework\MockObject\MockObject;
use PHPUnit\Framework\TestCase;

/**
 * GithubScmTest Class Doc Comment
 *
 * @category    Class
 * @description GithubScm
 * @package     OpenAPI\Server\Tests\Model
 * @author      openapi-generator contributors
 * @link        https://github.com/openapitools/openapi-generator
 * @coversDefaultClass \OpenAPI\Server\Model\GithubScm
 */
class GithubScmTest extends TestCase
{
    protected GithubScm|MockObject $object;

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
        $this->object = $this->getMockBuilder(GithubScm::class)->getMockForAbstractClass();
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
        $this->assertTrue(class_exists(GithubScm::class));
        $this->assertInstanceOf(GithubScm::class, $this->object);
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
     * Test attribute "credentialId"
     *
     * @group unit
     * @small
     */
    public function testPropertyCredentialId(): void
    {
        $this->markTestSkipped('Test for property credentialId not implemented');
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
     * Test attribute "uri"
     *
     * @group unit
     * @small
     */
    public function testPropertyUri(): void
    {
        $this->markTestSkipped('Test for property uri not implemented');
    }
}
