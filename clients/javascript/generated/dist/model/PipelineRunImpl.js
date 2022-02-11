"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PipelineRunImpllinks = _interopRequireDefault(require("./PipelineRunImpllinks"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The PipelineRunImpl model module.
 * @module model/PipelineRunImpl
 * @version 1.1.2-pre.0
 */
var PipelineRunImpl = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>PipelineRunImpl</code>.
   * @alias module:model/PipelineRunImpl
   */
  function PipelineRunImpl() {
    _classCallCheck(this, PipelineRunImpl);

    PipelineRunImpl.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(PipelineRunImpl, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>PipelineRunImpl</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PipelineRunImpl} obj Optional instance to populate.
     * @return {module:model/PipelineRunImpl} The populated <code>PipelineRunImpl</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new PipelineRunImpl();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('_links')) {
          obj['_links'] = _PipelineRunImpllinks["default"].constructFromObject(data['_links']);
        }

        if (data.hasOwnProperty('durationInMillis')) {
          obj['durationInMillis'] = _ApiClient["default"].convertToType(data['durationInMillis'], 'Number');
        }

        if (data.hasOwnProperty('enQueueTime')) {
          obj['enQueueTime'] = _ApiClient["default"].convertToType(data['enQueueTime'], 'String');
        }

        if (data.hasOwnProperty('endTime')) {
          obj['endTime'] = _ApiClient["default"].convertToType(data['endTime'], 'String');
        }

        if (data.hasOwnProperty('estimatedDurationInMillis')) {
          obj['estimatedDurationInMillis'] = _ApiClient["default"].convertToType(data['estimatedDurationInMillis'], 'Number');
        }

        if (data.hasOwnProperty('id')) {
          obj['id'] = _ApiClient["default"].convertToType(data['id'], 'String');
        }

        if (data.hasOwnProperty('organization')) {
          obj['organization'] = _ApiClient["default"].convertToType(data['organization'], 'String');
        }

        if (data.hasOwnProperty('pipeline')) {
          obj['pipeline'] = _ApiClient["default"].convertToType(data['pipeline'], 'String');
        }

        if (data.hasOwnProperty('result')) {
          obj['result'] = _ApiClient["default"].convertToType(data['result'], 'String');
        }

        if (data.hasOwnProperty('runSummary')) {
          obj['runSummary'] = _ApiClient["default"].convertToType(data['runSummary'], 'String');
        }

        if (data.hasOwnProperty('startTime')) {
          obj['startTime'] = _ApiClient["default"].convertToType(data['startTime'], 'String');
        }

        if (data.hasOwnProperty('state')) {
          obj['state'] = _ApiClient["default"].convertToType(data['state'], 'String');
        }

        if (data.hasOwnProperty('type')) {
          obj['type'] = _ApiClient["default"].convertToType(data['type'], 'String');
        }

        if (data.hasOwnProperty('commitId')) {
          obj['commitId'] = _ApiClient["default"].convertToType(data['commitId'], 'String');
        }
      }

      return obj;
    }
  }]);

  return PipelineRunImpl;
}();
/**
 * @member {String} _class
 */


PipelineRunImpl.prototype['_class'] = undefined;
/**
 * @member {module:model/PipelineRunImpllinks} _links
 */

PipelineRunImpl.prototype['_links'] = undefined;
/**
 * @member {Number} durationInMillis
 */

PipelineRunImpl.prototype['durationInMillis'] = undefined;
/**
 * @member {String} enQueueTime
 */

PipelineRunImpl.prototype['enQueueTime'] = undefined;
/**
 * @member {String} endTime
 */

PipelineRunImpl.prototype['endTime'] = undefined;
/**
 * @member {Number} estimatedDurationInMillis
 */

PipelineRunImpl.prototype['estimatedDurationInMillis'] = undefined;
/**
 * @member {String} id
 */

PipelineRunImpl.prototype['id'] = undefined;
/**
 * @member {String} organization
 */

PipelineRunImpl.prototype['organization'] = undefined;
/**
 * @member {String} pipeline
 */

PipelineRunImpl.prototype['pipeline'] = undefined;
/**
 * @member {String} result
 */

PipelineRunImpl.prototype['result'] = undefined;
/**
 * @member {String} runSummary
 */

PipelineRunImpl.prototype['runSummary'] = undefined;
/**
 * @member {String} startTime
 */

PipelineRunImpl.prototype['startTime'] = undefined;
/**
 * @member {String} state
 */

PipelineRunImpl.prototype['state'] = undefined;
/**
 * @member {String} type
 */

PipelineRunImpl.prototype['type'] = undefined;
/**
 * @member {String} commitId
 */

PipelineRunImpl.prototype['commitId'] = undefined;
var _default = PipelineRunImpl;
exports["default"] = _default;