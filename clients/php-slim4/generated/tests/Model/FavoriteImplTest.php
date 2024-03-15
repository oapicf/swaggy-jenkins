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
use OpenAPIServer\Model\FavoriteImpl;

/**
 * FavoriteImplTest Class Doc Comment
 *
 * @package OpenAPIServer\Model
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 *
 * @coversDefaultClass \OpenAPIServer\Model\FavoriteImpl
 */
class FavoriteImplTest extends TestCase
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
     * Test "FavoriteImpl"
     */
    public function testFavoriteImpl()
    {
        $testFavoriteImpl = new FavoriteImpl();
        $namespacedClassname = FavoriteImpl::getModelsNamespace() . '\\FavoriteImpl';
        $this->assertSame('\\' . FavoriteImpl::class, $namespacedClassname);
        $this->assertTrue(
            class_exists($namespacedClassname),
            sprintf('Assertion failed that "%s" class exists', $namespacedClassname)
        );
        self::markTestIncomplete(
            'Test of "FavoriteImpl" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "class"
     */
    public function testPropertyClass()
    {
        self::markTestIncomplete(
            'Test of "class" property in "FavoriteImpl" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "links"
     */
    public function testPropertyLinks()
    {
        self::markTestIncomplete(
            'Test of "links" property in "FavoriteImpl" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "item"
     */
    public function testPropertyItem()
    {
        self::markTestIncomplete(
            'Test of "item" property in "FavoriteImpl" model has not been implemented yet.'
        );
    }

    /**
     * Test getOpenApiSchema static method
     * @covers ::getOpenApiSchema
     */
    public function testGetOpenApiSchema()
    {
        $schemaArr = FavoriteImpl::getOpenApiSchema();
        $this->assertIsArray($schemaArr);
    }
}

