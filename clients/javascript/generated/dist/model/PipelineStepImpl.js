"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _InputStepImpl = _interopRequireDefault(require("./InputStepImpl"));

var _PipelineStepImpllinks = _interopRequireDefault(require("./PipelineStepImpllinks"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The PipelineStepImpl model module.
 * @module model/PipelineStepImpl
 * @version 1.1.2-pre.0
 */
var PipelineStepImpl = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>PipelineStepImpl</code>.
   * @alias module:model/PipelineStepImpl
   */
  function PipelineStepImpl() {
    _classCallCheck(this, PipelineStepImpl);

    PipelineStepImpl.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(PipelineStepImpl, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>PipelineStepImpl</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PipelineStepImpl} obj Optional instance to populate.
     * @return {module:model/PipelineStepImpl} The populated <code>PipelineStepImpl</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new PipelineStepImpl();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('_links')) {
          obj['_links'] = _PipelineStepImpllinks["default"].constructFromObject(data['_links']);
        }

        if (data.hasOwnProperty('displayName')) {
          obj['displayName'] = _ApiClient["default"].convertToType(data['displayName'], 'String');
        }

        if (data.hasOwnProperty('durationInMillis')) {
          obj['durationInMillis'] = _ApiClient["default"].convertToType(data['durationInMillis'], 'Number');
        }

        if (data.hasOwnProperty('id')) {
          obj['id'] = _ApiClient["default"].convertToType(data['id'], 'String');
        }

        if (data.hasOwnProperty('input')) {
          obj['input'] = _InputStepImpl["default"].constructFromObject(data['input']);
        }

        if (data.hasOwnProperty('result')) {
          obj['result'] = _ApiClient["default"].convertToType(data['result'], 'String');
        }

        if (data.hasOwnProperty('startTime')) {
          obj['startTime'] = _ApiClient["default"].convertToType(data['startTime'], 'String');
        }

        if (data.hasOwnProperty('state')) {
          obj['state'] = _ApiClient["default"].convertToType(data['state'], 'String');
        }
      }

      return obj;
    }
  }]);

  return PipelineStepImpl;
}();
/**
 * @member {String} _class
 */


PipelineStepImpl.prototype['_class'] = undefined;
/**
 * @member {module:model/PipelineStepImpllinks} _links
 */

PipelineStepImpl.prototype['_links'] = undefined;
/**
 * @member {String} displayName
 */

PipelineStepImpl.prototype['displayName'] = undefined;
/**
 * @member {Number} durationInMillis
 */

PipelineStepImpl.prototype['durationInMillis'] = undefined;
/**
 * @member {String} id
 */

PipelineStepImpl.prototype['id'] = undefined;
/**
 * @member {module:model/InputStepImpl} input
 */

PipelineStepImpl.prototype['input'] = undefined;
/**
 * @member {String} result
 */

PipelineStepImpl.prototype['result'] = undefined;
/**
 * @member {String} startTime
 */

PipelineStepImpl.prototype['startTime'] = undefined;
/**
 * @member {String} state
 */

PipelineStepImpl.prototype['state'] = undefined;
var _default = PipelineStepImpl;
exports["default"] = _default;