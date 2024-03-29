<?php
/**
 * HudsonMasterComputermonitorDataTest
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

use OpenAPI\Server\Model\HudsonMasterComputermonitorData;
use PHPUnit\Framework\MockObject\MockObject;
use PHPUnit\Framework\TestCase;

/**
 * HudsonMasterComputermonitorDataTest Class Doc Comment
 *
 * @category    Class
 * @description HudsonMasterComputermonitorData
 * @package     OpenAPI\Server\Tests\Model
 * @author      openapi-generator contributors
 * @link        https://github.com/openapitools/openapi-generator
 * @coversDefaultClass \OpenAPI\Server\Model\HudsonMasterComputermonitorData
 */
class HudsonMasterComputermonitorDataTest extends TestCase
{
    protected HudsonMasterComputermonitorData|MockObject $object;

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
        $this->object = $this->getMockBuilder(HudsonMasterComputermonitorData::class)->getMockForAbstractClass();
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
        $this->assertTrue(class_exists(HudsonMasterComputermonitorData::class));
        $this->assertInstanceOf(HudsonMasterComputermonitorData::class, $this->object);
    }

    /**
     * Test attribute "hudsonNodeMonitorsSwapSpaceMonitor"
     *
     * @group unit
     * @small
     */
    public function testPropertyHudsonNodeMonitorsSwapSpaceMonitor(): void
    {
        $this->markTestSkipped('Test for property hudsonNodeMonitorsSwapSpaceMonitor not implemented');
    }

    /**
     * Test attribute "hudsonNodeMonitorsTemporarySpaceMonitor"
     *
     * @group unit
     * @small
     */
    public function testPropertyHudsonNodeMonitorsTemporarySpaceMonitor(): void
    {
        $this->markTestSkipped('Test for property hudsonNodeMonitorsTemporarySpaceMonitor not implemented');
    }

    /**
     * Test attribute "hudsonNodeMonitorsDiskSpaceMonitor"
     *
     * @group unit
     * @small
     */
    public function testPropertyHudsonNodeMonitorsDiskSpaceMonitor(): void
    {
        $this->markTestSkipped('Test for property hudsonNodeMonitorsDiskSpaceMonitor not implemented');
    }

    /**
     * Test attribute "hudsonNodeMonitorsArchitectureMonitor"
     *
     * @group unit
     * @small
     */
    public function testPropertyHudsonNodeMonitorsArchitectureMonitor(): void
    {
        $this->markTestSkipped('Test for property hudsonNodeMonitorsArchitectureMonitor not implemented');
    }

    /**
     * Test attribute "hudsonNodeMonitorsResponseTimeMonitor"
     *
     * @group unit
     * @small
     */
    public function testPropertyHudsonNodeMonitorsResponseTimeMonitor(): void
    {
        $this->markTestSkipped('Test for property hudsonNodeMonitorsResponseTimeMonitor not implemented');
    }

    /**
     * Test attribute "hudsonNodeMonitorsClockMonitor"
     *
     * @group unit
     * @small
     */
    public function testPropertyHudsonNodeMonitorsClockMonitor(): void
    {
        $this->markTestSkipped('Test for property hudsonNodeMonitorsClockMonitor not implemented');
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
