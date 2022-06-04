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
use OpenAPIServer\Model\ExtensionClassContainerImpl1;

/**
 * ExtensionClassContainerImpl1Test Class Doc Comment
 *
 * @package OpenAPIServer\Model
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 *
 * @coversDefaultClass \OpenAPIServer\Model\ExtensionClassContainerImpl1
 */
class ExtensionClassContainerImpl1Test extends TestCase
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
     * Test "ExtensionClassContainerImpl1"
     */
    public function testExtensionClassContainerImpl1()
    {
        $testExtensionClassContainerImpl1 = new ExtensionClassContainerImpl1();
        $namespacedClassname = ExtensionClassContainerImpl1::getModelsNamespace() . '\\ExtensionClassContainerImpl1';
        $this->assertSame('\\' . ExtensionClassContainerImpl1::class, $namespacedClassname);
        $this->assertTrue(
            class_exists($namespacedClassname),
            sprintf('Assertion failed that "%s" class exists', $namespacedClassname)
        );
        $this->markTestIncomplete(
            'Test of "ExtensionClassContainerImpl1" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "class"
     */
    public function testPropertyClass()
    {
        $this->markTestIncomplete(
            'Test of "class" property in "ExtensionClassContainerImpl1" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "links"
     */
    public function testPropertyLinks()
    {
        $this->markTestIncomplete(
            'Test of "links" property in "ExtensionClassContainerImpl1" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "map"
     */
    public function testPropertyMap()
    {
        $this->markTestIncomplete(
            'Test of "map" property in "ExtensionClassContainerImpl1" model has not been implemented yet.'
        );
    }

    /**
     * Test getOpenApiSchema static method
     * @covers ::getOpenApiSchema
     */
    public function testGetOpenApiSchema()
    {
        $schemaArr = ExtensionClassContainerImpl1::getOpenApiSchema();
        $this->assertIsArray($schemaArr);
    }
}
