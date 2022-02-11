"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ExtensionClassImpl = _interopRequireDefault(require("./ExtensionClassImpl"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The ExtensionClassContainerImpl1map model module.
 * @module model/ExtensionClassContainerImpl1map
 * @version 1.1.2-pre.0
 */
var ExtensionClassContainerImpl1map = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>ExtensionClassContainerImpl1map</code>.
   * @alias module:model/ExtensionClassContainerImpl1map
   */
  function ExtensionClassContainerImpl1map() {
    _classCallCheck(this, ExtensionClassContainerImpl1map);

    ExtensionClassContainerImpl1map.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(ExtensionClassContainerImpl1map, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>ExtensionClassContainerImpl1map</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtensionClassContainerImpl1map} obj Optional instance to populate.
     * @return {module:model/ExtensionClassContainerImpl1map} The populated <code>ExtensionClassContainerImpl1map</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new ExtensionClassContainerImpl1map();

        if (data.hasOwnProperty('io.jenkins.blueocean.service.embedded.rest.PipelineImpl')) {
          obj['io.jenkins.blueocean.service.embedded.rest.PipelineImpl'] = _ExtensionClassImpl["default"].constructFromObject(data['io.jenkins.blueocean.service.embedded.rest.PipelineImpl']);
        }

        if (data.hasOwnProperty('io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl')) {
          obj['io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl'] = _ExtensionClassImpl["default"].constructFromObject(data['io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl']);
        }

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }
      }

      return obj;
    }
  }]);

  return ExtensionClassContainerImpl1map;
}();
/**
 * @member {module:model/ExtensionClassImpl} io.jenkins.blueocean.service.embedded.rest.PipelineImpl
 */


ExtensionClassContainerImpl1map.prototype['io.jenkins.blueocean.service.embedded.rest.PipelineImpl'] = undefined;
/**
 * @member {module:model/ExtensionClassImpl} io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl
 */

ExtensionClassContainerImpl1map.prototype['io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl'] = undefined;
/**
 * @member {String} _class
 */

ExtensionClassContainerImpl1map.prototype['_class'] = undefined;
var _default = ExtensionClassContainerImpl1map;
exports["default"] = _default;