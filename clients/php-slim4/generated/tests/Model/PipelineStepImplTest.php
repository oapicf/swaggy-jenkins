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
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 * Please update the test case below to test the model.
 */
namespace OpenAPIServer\Model;

use PHPUnit\Framework\TestCase;
use OpenAPIServer\Model\PipelineStepImpl;

/**
 * PipelineStepImplTest Class Doc Comment
 *
 * @package OpenAPIServer\Model
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 *
 * @coversDefaultClass \OpenAPIServer\Model\PipelineStepImpl
 */
class PipelineStepImplTest extends TestCase
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
     * Test "PipelineStepImpl"
     */
    public function testPipelineStepImpl()
    {
        $testPipelineStepImpl = new PipelineStepImpl();
        $namespacedClassname = PipelineStepImpl::getModelsNamespace() . '\\PipelineStepImpl';
        $this->assertSame('\\' . PipelineStepImpl::class, $namespacedClassname);
        $this->assertTrue(
            class_exists($namespacedClassname),
            sprintf('Assertion failed that "%s" class exists', $namespacedClassname)
        );
        self::markTestIncomplete(
            'Test of "PipelineStepImpl" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "class"
     */
    public function testPropertyClass()
    {
        self::markTestIncomplete(
            'Test of "class" property in "PipelineStepImpl" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "links"
     */
    public function testPropertyLinks()
    {
        self::markTestIncomplete(
            'Test of "links" property in "PipelineStepImpl" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "displayName"
     */
    public function testPropertyDisplayName()
    {
        self::markTestIncomplete(
            'Test of "displayName" property in "PipelineStepImpl" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "durationInMillis"
     */
    public function testPropertyDurationInMillis()
    {
        self::markTestIncomplete(
            'Test of "durationInMillis" property in "PipelineStepImpl" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "id"
     */
    public function testPropertyId()
    {
        self::markTestIncomplete(
            'Test of "id" property in "PipelineStepImpl" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "input"
     */
    public function testPropertyInput()
    {
        self::markTestIncomplete(
            'Test of "input" property in "PipelineStepImpl" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "result"
     */
    public function testPropertyResult()
    {
        self::markTestIncomplete(
            'Test of "result" property in "PipelineStepImpl" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "startTime"
     */
    public function testPropertyStartTime()
    {
        self::markTestIncomplete(
            'Test of "startTime" property in "PipelineStepImpl" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "state"
     */
    public function testPropertyState()
    {
        self::markTestIncomplete(
            'Test of "state" property in "PipelineStepImpl" model has not been implemented yet.'
        );
    }

    /**
     * Test getOpenApiSchema static method
     * @covers ::getOpenApiSchema
     */
    public function testGetOpenApiSchema()
    {
        $schemaArr = PipelineStepImpl::getOpenApiSchema();
        $this->assertIsArray($schemaArr);
    }
}

