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
 * The PipelineStepImpllinks model module.
 * @module model/PipelineStepImpllinks
 * @version 1.1.2-pre.0
 */
var PipelineStepImpllinks = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>PipelineStepImpllinks</code>.
   * @alias module:model/PipelineStepImpllinks
   */
  function PipelineStepImpllinks() {
    _classCallCheck(this, PipelineStepImpllinks);

    PipelineStepImpllinks.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(PipelineStepImpllinks, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>PipelineStepImpllinks</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PipelineStepImpllinks} obj Optional instance to populate.
     * @return {module:model/PipelineStepImpllinks} The populated <code>PipelineStepImpllinks</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new PipelineStepImpllinks();

        if (data.hasOwnProperty('self')) {
          obj['self'] = _Link["default"].constructFromObject(data['self']);
        }

        if (data.hasOwnProperty('actions')) {
          obj['actions'] = _Link["default"].constructFromObject(data['actions']);
        }

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }
      }

      return obj;
    }
  }]);

  return PipelineStepImpllinks;
}();
/**
 * @member {module:model/Link} self
 */


PipelineStepImpllinks.prototype['self'] = undefined;
/**
 * @member {module:model/Link} actions
 */

PipelineStepImpllinks.prototype['actions'] = undefined;
/**
 * @member {String} _class
 */

PipelineStepImpllinks.prototype['_class'] = undefined;
var _default = PipelineStepImpllinks;
exports["default"] = _default;