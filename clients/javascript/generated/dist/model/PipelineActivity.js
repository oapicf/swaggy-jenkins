"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PipelineActivityartifacts = _interopRequireDefault(require("./PipelineActivityartifacts"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The PipelineActivity model module.
 * @module model/PipelineActivity
 * @version 1.1.2-pre.0
 */
var PipelineActivity = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>PipelineActivity</code>.
   * @alias module:model/PipelineActivity
   */
  function PipelineActivity() {
    _classCallCheck(this, PipelineActivity);

    PipelineActivity.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(PipelineActivity, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>PipelineActivity</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PipelineActivity} obj Optional instance to populate.
     * @return {module:model/PipelineActivity} The populated <code>PipelineActivity</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new PipelineActivity();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('artifacts')) {
          obj['artifacts'] = _ApiClient["default"].convertToType(data['artifacts'], [_PipelineActivityartifacts["default"]]);
        }

        if (data.hasOwnProperty('durationInMillis')) {
          obj['durationInMillis'] = _ApiClient["default"].convertToType(data['durationInMillis'], 'Number');
        }

        if (data.hasOwnProperty('estimatedDurationInMillis')) {
          obj['estimatedDurationInMillis'] = _ApiClient["default"].convertToType(data['estimatedDurationInMillis'], 'Number');
        }

        if (data.hasOwnProperty('enQueueTime')) {
          obj['enQueueTime'] = _ApiClient["default"].convertToType(data['enQueueTime'], 'String');
        }

        if (data.hasOwnProperty('endTime')) {
          obj['endTime'] = _ApiClient["default"].convertToType(data['endTime'], 'String');
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

  return PipelineActivity;
}();
/**
 * @member {String} _class
 */


PipelineActivity.prototype['_class'] = undefined;
/**
 * @member {Array.<module:model/PipelineActivityartifacts>} artifacts
 */

PipelineActivity.prototype['artifacts'] = undefined;
/**
 * @member {Number} durationInMillis
 */

PipelineActivity.prototype['durationInMillis'] = undefined;
/**
 * @member {Number} estimatedDurationInMillis
 */

PipelineActivity.prototype['estimatedDurationInMillis'] = undefined;
/**
 * @member {String} enQueueTime
 */

PipelineActivity.prototype['enQueueTime'] = undefined;
/**
 * @member {String} endTime
 */

PipelineActivity.prototype['endTime'] = undefined;
/**
 * @member {String} id
 */

PipelineActivity.prototype['id'] = undefined;
/**
 * @member {String} organization
 */

PipelineActivity.prototype['organization'] = undefined;
/**
 * @member {String} pipeline
 */

PipelineActivity.prototype['pipeline'] = undefined;
/**
 * @member {String} result
 */

PipelineActivity.prototype['result'] = undefined;
/**
 * @member {String} runSummary
 */

PipelineActivity.prototype['runSummary'] = undefined;
/**
 * @member {String} startTime
 */

PipelineActivity.prototype['startTime'] = undefined;
/**
 * @member {String} state
 */

PipelineActivity.prototype['state'] = undefined;
/**
 * @member {String} type
 */

PipelineActivity.prototype['type'] = undefined;
/**
 * @member {String} commitId
 */

PipelineActivity.prototype['commitId'] = undefined;
var _default = PipelineActivity;
exports["default"] = _default;