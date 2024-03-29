<?php
/**
 * QueueBlockedItemTest
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

use OpenAPI\Server\Model\QueueBlockedItem;
use PHPUnit\Framework\MockObject\MockObject;
use PHPUnit\Framework\TestCase;

/**
 * QueueBlockedItemTest Class Doc Comment
 *
 * @category    Class
 * @description QueueBlockedItem
 * @package     OpenAPI\Server\Tests\Model
 * @author      openapi-generator contributors
 * @link        https://github.com/openapitools/openapi-generator
 * @coversDefaultClass \OpenAPI\Server\Model\QueueBlockedItem
 */
class QueueBlockedItemTest extends TestCase
{
    protected QueueBlockedItem|MockObject $object;

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
        $this->object = $this->getMockBuilder(QueueBlockedItem::class)->getMockForAbstractClass();
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
        $this->assertTrue(class_exists(QueueBlockedItem::class));
        $this->assertInstanceOf(QueueBlockedItem::class, $this->object);
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
     * Test attribute "actions"
     *
     * @group unit
     * @small
     */
    public function testPropertyActions(): void
    {
        $this->markTestSkipped('Test for property actions not implemented');
    }

    /**
     * Test attribute "blocked"
     *
     * @group unit
     * @small
     */
    public function testPropertyBlocked(): void
    {
        $this->markTestSkipped('Test for property blocked not implemented');
    }

    /**
     * Test attribute "buildable"
     *
     * @group unit
     * @small
     */
    public function testPropertyBuildable(): void
    {
        $this->markTestSkipped('Test for property buildable not implemented');
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
     * Test attribute "inQueueSince"
     *
     * @group unit
     * @small
     */
    public function testPropertyInQueueSince(): void
    {
        $this->markTestSkipped('Test for property inQueueSince not implemented');
    }

    /**
     * Test attribute "params"
     *
     * @group unit
     * @small
     */
    public function testPropertyParams(): void
    {
        $this->markTestSkipped('Test for property params not implemented');
    }

    /**
     * Test attribute "stuck"
     *
     * @group unit
     * @small
     */
    public function testPropertyStuck(): void
    {
        $this->markTestSkipped('Test for property stuck not implemented');
    }

    /**
     * Test attribute "task"
     *
     * @group unit
     * @small
     */
    public function testPropertyTask(): void
    {
        $this->markTestSkipped('Test for property task not implemented');
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
     * Test attribute "why"
     *
     * @group unit
     * @small
     */
    public function testPropertyWhy(): void
    {
        $this->markTestSkipped('Test for property why not implemented');
    }

    /**
     * Test attribute "buildableStartMilliseconds"
     *
     * @group unit
     * @small
     */
    public function testPropertyBuildableStartMilliseconds(): void
    {
        $this->markTestSkipped('Test for property buildableStartMilliseconds not implemented');
    }
}
