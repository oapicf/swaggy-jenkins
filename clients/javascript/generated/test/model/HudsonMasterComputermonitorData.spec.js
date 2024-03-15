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
    instance = new SwaggyJenkins.HudsonMasterComputermonitorData();
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

  describe('HudsonMasterComputermonitorData', function() {
    it('should create an instance of HudsonMasterComputermonitorData', function() {
      // uncomment below and update the code to test HudsonMasterComputermonitorData
      //var instance = new SwaggyJenkins.HudsonMasterComputermonitorData();
      //expect(instance).to.be.a(SwaggyJenkins.HudsonMasterComputermonitorData);
    });

    it('should have the property hudsonNodeMonitorsSwapSpaceMonitor (base name: "hudson.node_monitors.SwapSpaceMonitor")', function() {
      // uncomment below and update the code to test the property hudsonNodeMonitorsSwapSpaceMonitor
      //var instance = new SwaggyJenkins.HudsonMasterComputermonitorData();
      //expect(instance).to.be();
    });

    it('should have the property hudsonNodeMonitorsTemporarySpaceMonitor (base name: "hudson.node_monitors.TemporarySpaceMonitor")', function() {
      // uncomment below and update the code to test the property hudsonNodeMonitorsTemporarySpaceMonitor
      //var instance = new SwaggyJenkins.HudsonMasterComputermonitorData();
      //expect(instance).to.be();
    });

    it('should have the property hudsonNodeMonitorsDiskSpaceMonitor (base name: "hudson.node_monitors.DiskSpaceMonitor")', function() {
      // uncomment below and update the code to test the property hudsonNodeMonitorsDiskSpaceMonitor
      //var instance = new SwaggyJenkins.HudsonMasterComputermonitorData();
      //expect(instance).to.be();
    });

    it('should have the property hudsonNodeMonitorsArchitectureMonitor (base name: "hudson.node_monitors.ArchitectureMonitor")', function() {
      // uncomment below and update the code to test the property hudsonNodeMonitorsArchitectureMonitor
      //var instance = new SwaggyJenkins.HudsonMasterComputermonitorData();
      //expect(instance).to.be();
    });

    it('should have the property hudsonNodeMonitorsResponseTimeMonitor (base name: "hudson.node_monitors.ResponseTimeMonitor")', function() {
      // uncomment below and update the code to test the property hudsonNodeMonitorsResponseTimeMonitor
      //var instance = new SwaggyJenkins.HudsonMasterComputermonitorData();
      //expect(instance).to.be();
    });

    it('should have the property hudsonNodeMonitorsClockMonitor (base name: "hudson.node_monitors.ClockMonitor")', function() {
      // uncomment below and update the code to test the property hudsonNodeMonitorsClockMonitor
      //var instance = new SwaggyJenkins.HudsonMasterComputermonitorData();
      //expect(instance).to.be();
    });

    it('should have the property _class (base name: "_class")', function() {
      // uncomment below and update the code to test the property _class
      //var instance = new SwaggyJenkins.HudsonMasterComputermonitorData();
      //expect(instance).to.be();
    });

  });

}));
