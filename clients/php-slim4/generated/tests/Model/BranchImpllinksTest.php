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
use OpenAPIServer\Model\BranchImpllinks;

/**
 * BranchImpllinksTest Class Doc Comment
 *
 * @package OpenAPIServer\Model
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 *
 * @coversDefaultClass \OpenAPIServer\Model\BranchImpllinks
 */
class BranchImpllinksTest extends TestCase
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
     * Test "BranchImpllinks"
     */
    public function testBranchImpllinks()
    {
        $testBranchImpllinks = new BranchImpllinks();
        $namespacedClassname = BranchImpllinks::getModelsNamespace() . '\\BranchImpllinks';
        $this->assertSame('\\' . BranchImpllinks::class, $namespacedClassname);
        $this->assertTrue(
            class_exists($namespacedClassname),
            sprintf('Assertion failed that "%s" class exists', $namespacedClassname)
        );
        self::markTestIncomplete(
            'Test of "BranchImpllinks" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "self"
     */
    public function testPropertySelf()
    {
        self::markTestIncomplete(
            'Test of "self" property in "BranchImpllinks" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "actions"
     */
    public function testPropertyActions()
    {
        self::markTestIncomplete(
            'Test of "actions" property in "BranchImpllinks" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "runs"
     */
    public function testPropertyRuns()
    {
        self::markTestIncomplete(
            'Test of "runs" property in "BranchImpllinks" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "queue"
     */
    public function testPropertyQueue()
    {
        self::markTestIncomplete(
            'Test of "queue" property in "BranchImpllinks" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "class"
     */
    public function testPropertyClass()
    {
        self::markTestIncomplete(
            'Test of "class" property in "BranchImpllinks" model has not been implemented yet.'
        );
    }

    /**
     * Test getOpenApiSchema static method
     * @covers ::getOpenApiSchema
     */
    public function testGetOpenApiSchema()
    {
        $schemaArr = BranchImpllinks::getOpenApiSchema();
        $this->assertIsArray($schemaArr);
    }
}

