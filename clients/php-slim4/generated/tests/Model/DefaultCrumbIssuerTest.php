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
use OpenAPIServer\Model\DefaultCrumbIssuer;

/**
 * DefaultCrumbIssuerTest Class Doc Comment
 *
 * @package OpenAPIServer\Model
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 *
 * @coversDefaultClass \OpenAPIServer\Model\DefaultCrumbIssuer
 */
class DefaultCrumbIssuerTest extends TestCase
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
     * Test "DefaultCrumbIssuer"
     */
    public function testDefaultCrumbIssuer()
    {
        $testDefaultCrumbIssuer = new DefaultCrumbIssuer();
        $namespacedClassname = DefaultCrumbIssuer::getModelsNamespace() . '\\DefaultCrumbIssuer';
        $this->assertSame('\\' . DefaultCrumbIssuer::class, $namespacedClassname);
        $this->assertTrue(
            class_exists($namespacedClassname),
            sprintf('Assertion failed that "%s" class exists', $namespacedClassname)
        );
        self::markTestIncomplete(
            'Test of "DefaultCrumbIssuer" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "class"
     */
    public function testPropertyClass()
    {
        self::markTestIncomplete(
            'Test of "class" property in "DefaultCrumbIssuer" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "crumb"
     */
    public function testPropertyCrumb()
    {
        self::markTestIncomplete(
            'Test of "crumb" property in "DefaultCrumbIssuer" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "crumbRequestField"
     */
    public function testPropertyCrumbRequestField()
    {
        self::markTestIncomplete(
            'Test of "crumbRequestField" property in "DefaultCrumbIssuer" model has not been implemented yet.'
        );
    }

    /**
     * Test getOpenApiSchema static method
     * @covers ::getOpenApiSchema
     */
    public function testGetOpenApiSchema()
    {
        $schemaArr = DefaultCrumbIssuer::getOpenApiSchema();
        $this->assertIsArray($schemaArr);
    }
}

