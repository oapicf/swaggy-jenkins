<?php

/**
 * Swaggy Jenkins
 * PHP version 7.4
 *
 * @package OpenAPIServer
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 */

/**
 * Jenkins API clients generated from Swagger / Open API specification
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 * Please update the test case below to test the model.
 */
namespace OpenAPIServer\Model;

use PHPUnit\Framework\TestCase;
use OpenAPIServer\Model\ResponseTimeMonitorData;

/**
 * ResponseTimeMonitorDataTest Class Doc Comment
 *
 * @package OpenAPIServer\Model
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 *
 * @coversDefaultClass \OpenAPIServer\Model\ResponseTimeMonitorData
 */
class ResponseTimeMonitorDataTest extends TestCase
{

    /**
     * Setup before running any test cases
     */
    public static function setUpBeforeClass(): void
    {
    }

    /**
     * Setup before running each test case
     */
    public function setUp(): void
    {
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
     * Test "ResponseTimeMonitorData"
     */
    public function testResponseTimeMonitorData()
    {
        $testResponseTimeMonitorData = new ResponseTimeMonitorData();
        $namespacedClassname = ResponseTimeMonitorData::getModelsNamespace() . '\\ResponseTimeMonitorData';
        $this->assertSame('\\' . ResponseTimeMonitorData::class, $namespacedClassname);
        $this->assertTrue(
            class_exists($namespacedClassname),
            sprintf('Assertion failed that "%s" class exists', $namespacedClassname)
        );
        $this->markTestIncomplete(
            'Test of "ResponseTimeMonitorData" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "class"
     */
    public function testPropertyClass()
    {
        $this->markTestIncomplete(
            'Test of "class" property in "ResponseTimeMonitorData" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "timestamp"
     */
    public function testPropertyTimestamp()
    {
        $this->markTestIncomplete(
            'Test of "timestamp" property in "ResponseTimeMonitorData" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "average"
     */
    public function testPropertyAverage()
    {
        $this->markTestIncomplete(
            'Test of "average" property in "ResponseTimeMonitorData" model has not been implemented yet.'
        );
    }

    /**
     * Test getOpenApiSchema static method
     * @covers ::getOpenApiSchema
     */
    public function testGetOpenApiSchema()
    {
        $schemaArr = ResponseTimeMonitorData::getOpenApiSchema();
        $this->assertIsArray($schemaArr);
    }
}
