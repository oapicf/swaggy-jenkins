/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.SwaggyJenkins);
  }
}(this, function(expect, SwaggyJenkins) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new SwaggyJenkins.GithubContent();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('GithubContent', function() {
    it('should create an instance of GithubContent', function() {
      // uncomment below and update the code to test GithubContent
      //var instance = new SwaggyJenkins.GithubContent();
      //expect(instance).to.be.a(SwaggyJenkins.GithubContent);
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new SwaggyJenkins.GithubContent();
      //expect(instance).to.be();
    });

    it('should have the property sha (base name: "sha")', function() {
      // uncomment below and update the code to test the property sha
      //var instance = new SwaggyJenkins.GithubContent();
      //expect(instance).to.be();
    });

    it('should have the property _class (base name: "_class")', function() {
      // uncomment below and update the code to test the property _class
      //var instance = new SwaggyJenkins.GithubContent();
      //expect(instance).to.be();
    });

    it('should have the property repo (base name: "repo")', function() {
      // uncomment below and update the code to test the property repo
      //var instance = new SwaggyJenkins.GithubContent();
      //expect(instance).to.be();
    });

    it('should have the property size (base name: "size")', function() {
      // uncomment below and update the code to test the property size
      //var instance = new SwaggyJenkins.GithubContent();
      //expect(instance).to.be();
    });

    it('should have the property owner (base name: "owner")', function() {
      // uncomment below and update the code to test the property owner
      //var instance = new SwaggyJenkins.GithubContent();
      //expect(instance).to.be();
    });

    it('should have the property path (base name: "path")', function() {
      // uncomment below and update the code to test the property path
      //var instance = new SwaggyJenkins.GithubContent();
      //expect(instance).to.be();
    });

    it('should have the property base64Data (base name: "base64Data")', function() {
      // uncomment below and update the code to test the property base64Data
      //var instance = new SwaggyJenkins.GithubContent();
      //expect(instance).to.be();
    });

  });

}));
