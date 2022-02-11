"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PipelineRunartifacts = _interopRequireDefault(require("./PipelineRunartifacts"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The PipelineRun model module.
 * @module model/PipelineRun
 * @version 1.1.2-pre.0
 */
var PipelineRun = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>PipelineRun</code>.
   * @alias module:model/PipelineRun
   */
  function PipelineRun() {
    _classCallCheck(this, PipelineRun);

    PipelineRun.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(PipelineRun, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>PipelineRun</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PipelineRun} obj Optional instance to populate.
     * @return {module:model/PipelineRun} The populated <code>PipelineRun</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new PipelineRun();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('artifacts')) {
          obj['artifacts'] = _ApiClient["default"].convertToType(data['artifacts'], [_PipelineRunartifacts["default"]]);
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

  return PipelineRun;
}();
/**
 * @member {String} _class
 */


PipelineRun.prototype['_class'] = undefined;
/**
 * @member {Array.<module:model/PipelineRunartifacts>} artifacts
 */

PipelineRun.prototype['artifacts'] = undefined;
/**
 * @member {Number} durationInMillis
 */

PipelineRun.prototype['durationInMillis'] = undefined;
/**
 * @member {Number} estimatedDurationInMillis
 */

PipelineRun.prototype['estimatedDurationInMillis'] = undefined;
/**
 * @member {String} enQueueTime
 */

PipelineRun.prototype['enQueueTime'] = undefined;
/**
 * @member {String} endTime
 */

PipelineRun.prototype['endTime'] = undefined;
/**
 * @member {String} id
 */

PipelineRun.prototype['id'] = undefined;
/**
 * @member {String} organization
 */

PipelineRun.prototype['organization'] = undefined;
/**
 * @member {String} pipeline
 */

PipelineRun.prototype['pipeline'] = undefined;
/**
 * @member {String} result
 */

PipelineRun.prototype['result'] = undefined;
/**
 * @member {String} runSummary
 */

PipelineRun.prototype['runSummary'] = undefined;
/**
 * @member {String} startTime
 */

PipelineRun.prototype['startTime'] = undefined;
/**
 * @member {String} state
 */

PipelineRun.prototype['state'] = undefined;
/**
 * @member {String} type
 */

PipelineRun.prototype['type'] = undefined;
/**
 * @member {String} commitId
 */

PipelineRun.prototype['commitId'] = undefined;
var _default = PipelineRun;
exports["default"] = _default;