"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Link = _interopRequireDefault(require("./Link"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The PipelineRunImpllinks model module.
 * @module model/PipelineRunImpllinks
 * @version 1.1.2-pre.0
 */
var PipelineRunImpllinks = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>PipelineRunImpllinks</code>.
   * @alias module:model/PipelineRunImpllinks
   */
  function PipelineRunImpllinks() {
    _classCallCheck(this, PipelineRunImpllinks);

    PipelineRunImpllinks.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(PipelineRunImpllinks, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>PipelineRunImpllinks</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PipelineRunImpllinks} obj Optional instance to populate.
     * @return {module:model/PipelineRunImpllinks} The populated <code>PipelineRunImpllinks</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new PipelineRunImpllinks();

        if (data.hasOwnProperty('nodes')) {
          obj['nodes'] = _Link["default"].constructFromObject(data['nodes']);
        }

        if (data.hasOwnProperty('log')) {
          obj['log'] = _Link["default"].constructFromObject(data['log']);
        }

        if (data.hasOwnProperty('self')) {
          obj['self'] = _Link["default"].constructFromObject(data['self']);
        }

        if (data.hasOwnProperty('actions')) {
          obj['actions'] = _Link["default"].constructFromObject(data['actions']);
        }

        if (data.hasOwnProperty('steps')) {
          obj['steps'] = _Link["default"].constructFromObject(data['steps']);
        }

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }
      }

      return obj;
    }
  }]);

  return PipelineRunImpllinks;
}();
/**
 * @member {module:model/Link} nodes
 */


PipelineRunImpllinks.prototype['nodes'] = undefined;
/**
 * @member {module:model/Link} log
 */

PipelineRunImpllinks.prototype['log'] = undefined;
/**
 * @member {module:model/Link} self
 */

PipelineRunImpllinks.prototype['self'] = undefined;
/**
 * @member {module:model/Link} actions
 */

PipelineRunImpllinks.prototype['actions'] = undefined;
/**
 * @member {module:model/Link} steps
 */

PipelineRunImpllinks.prototype['steps'] = undefined;
/**
 * @member {String} _class
 */

PipelineRunImpllinks.prototype['_class'] = undefined;
var _default = PipelineRunImpllinks;
exports["default"] = _default;