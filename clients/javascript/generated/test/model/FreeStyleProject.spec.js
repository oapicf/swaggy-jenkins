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
    instance = new SwaggyJenkins.FreeStyleProject();
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

  describe('FreeStyleProject', function() {
    it('should create an instance of FreeStyleProject', function() {
      // uncomment below and update the code to test FreeStyleProject
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be.a(SwaggyJenkins.FreeStyleProject);
    });

    it('should have the property _class (base name: "_class")', function() {
      // uncomment below and update the code to test the property _class
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property url (base name: "url")', function() {
      // uncomment below and update the code to test the property url
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property color (base name: "color")', function() {
      // uncomment below and update the code to test the property color
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property actions (base name: "actions")', function() {
      // uncomment below and update the code to test the property actions
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property description (base name: "description")', function() {
      // uncomment below and update the code to test the property description
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property displayName (base name: "displayName")', function() {
      // uncomment below and update the code to test the property displayName
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property displayNameOrNull (base name: "displayNameOrNull")', function() {
      // uncomment below and update the code to test the property displayNameOrNull
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property fullDisplayName (base name: "fullDisplayName")', function() {
      // uncomment below and update the code to test the property fullDisplayName
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property fullName (base name: "fullName")', function() {
      // uncomment below and update the code to test the property fullName
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property buildable (base name: "buildable")', function() {
      // uncomment below and update the code to test the property buildable
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property builds (base name: "builds")', function() {
      // uncomment below and update the code to test the property builds
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property firstBuild (base name: "firstBuild")', function() {
      // uncomment below and update the code to test the property firstBuild
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property healthReport (base name: "healthReport")', function() {
      // uncomment below and update the code to test the property healthReport
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property inQueue (base name: "inQueue")', function() {
      // uncomment below and update the code to test the property inQueue
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property keepDependencies (base name: "keepDependencies")', function() {
      // uncomment below and update the code to test the property keepDependencies
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property lastBuild (base name: "lastBuild")', function() {
      // uncomment below and update the code to test the property lastBuild
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property lastCompletedBuild (base name: "lastCompletedBuild")', function() {
      // uncomment below and update the code to test the property lastCompletedBuild
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property lastFailedBuild (base name: "lastFailedBuild")', function() {
      // uncomment below and update the code to test the property lastFailedBuild
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property lastStableBuild (base name: "lastStableBuild")', function() {
      // uncomment below and update the code to test the property lastStableBuild
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property lastSuccessfulBuild (base name: "lastSuccessfulBuild")', function() {
      // uncomment below and update the code to test the property lastSuccessfulBuild
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property lastUnstableBuild (base name: "lastUnstableBuild")', function() {
      // uncomment below and update the code to test the property lastUnstableBuild
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property lastUnsuccessfulBuild (base name: "lastUnsuccessfulBuild")', function() {
      // uncomment below and update the code to test the property lastUnsuccessfulBuild
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property nextBuildNumber (base name: "nextBuildNumber")', function() {
      // uncomment below and update the code to test the property nextBuildNumber
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property queueItem (base name: "queueItem")', function() {
      // uncomment below and update the code to test the property queueItem
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property concurrentBuild (base name: "concurrentBuild")', function() {
      // uncomment below and update the code to test the property concurrentBuild
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

    it('should have the property scm (base name: "scm")', function() {
      // uncomment below and update the code to test the property scm
      //var instance = new SwaggyJenkins.FreeStyleProject();
      //expect(instance).to.be();
    });

  });

}));
