"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FreeStyleBuild = _interopRequireDefault(require("./FreeStyleBuild"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The HudsonMasterComputerexecutors model module.
 * @module model/HudsonMasterComputerexecutors
 * @version 1.1.2-pre.0
 */
var HudsonMasterComputerexecutors = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>HudsonMasterComputerexecutors</code>.
   * @alias module:model/HudsonMasterComputerexecutors
   */
  function HudsonMasterComputerexecutors() {
    _classCallCheck(this, HudsonMasterComputerexecutors);

    HudsonMasterComputerexecutors.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(HudsonMasterComputerexecutors, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>HudsonMasterComputerexecutors</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/HudsonMasterComputerexecutors} obj Optional instance to populate.
     * @return {module:model/HudsonMasterComputerexecutors} The populated <code>HudsonMasterComputerexecutors</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new HudsonMasterComputerexecutors();

        if (data.hasOwnProperty('currentExecutable')) {
          obj['currentExecutable'] = _FreeStyleBuild["default"].constructFromObject(data['currentExecutable']);
        }

        if (data.hasOwnProperty('idle')) {
          obj['idle'] = _ApiClient["default"].convertToType(data['idle'], 'Boolean');
        }

        if (data.hasOwnProperty('likelyStuck')) {
          obj['likelyStuck'] = _ApiClient["default"].convertToType(data['likelyStuck'], 'Boolean');
        }

        if (data.hasOwnProperty('number')) {
          obj['number'] = _ApiClient["default"].convertToType(data['number'], 'Number');
        }

        if (data.hasOwnProperty('progress')) {
          obj['progress'] = _ApiClient["default"].convertToType(data['progress'], 'Number');
        }

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }
      }

      return obj;
    }
  }]);

  return HudsonMasterComputerexecutors;
}();
/**
 * @member {module:model/FreeStyleBuild} currentExecutable
 */


HudsonMasterComputerexecutors.prototype['currentExecutable'] = undefined;
/**
 * @member {Boolean} idle
 */

HudsonMasterComputerexecutors.prototype['idle'] = undefined;
/**
 * @member {Boolean} likelyStuck
 */

HudsonMasterComputerexecutors.prototype['likelyStuck'] = undefined;
/**
 * @member {Number} number
 */

HudsonMasterComputerexecutors.prototype['number'] = undefined;
/**
 * @member {Number} progress
 */

HudsonMasterComputerexecutors.prototype['progress'] = undefined;
/**
 * @member {String} _class
 */

HudsonMasterComputerexecutors.prototype['_class'] = undefined;
var _default = HudsonMasterComputerexecutors;
exports["default"] = _default;