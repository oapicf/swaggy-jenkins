"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PipelinelatestRun = _interopRequireDefault(require("./PipelinelatestRun"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The Pipeline model module.
 * @module model/Pipeline
 * @version 1.1.2-pre.0
 */
var Pipeline = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>Pipeline</code>.
   * @alias module:model/Pipeline
   */
  function Pipeline() {
    _classCallCheck(this, Pipeline);

    Pipeline.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(Pipeline, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>Pipeline</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Pipeline} obj Optional instance to populate.
     * @return {module:model/Pipeline} The populated <code>Pipeline</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new Pipeline();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('organization')) {
          obj['organization'] = _ApiClient["default"].convertToType(data['organization'], 'String');
        }

        if (data.hasOwnProperty('name')) {
          obj['name'] = _ApiClient["default"].convertToType(data['name'], 'String');
        }

        if (data.hasOwnProperty('displayName')) {
          obj['displayName'] = _ApiClient["default"].convertToType(data['displayName'], 'String');
        }

        if (data.hasOwnProperty('fullName')) {
          obj['fullName'] = _ApiClient["default"].convertToType(data['fullName'], 'String');
        }

        if (data.hasOwnProperty('weatherScore')) {
          obj['weatherScore'] = _ApiClient["default"].convertToType(data['weatherScore'], 'Number');
        }

        if (data.hasOwnProperty('estimatedDurationInMillis')) {
          obj['estimatedDurationInMillis'] = _ApiClient["default"].convertToType(data['estimatedDurationInMillis'], 'Number');
        }

        if (data.hasOwnProperty('latestRun')) {
          obj['latestRun'] = _PipelinelatestRun["default"].constructFromObject(data['latestRun']);
        }
      }

      return obj;
    }
  }]);

  return Pipeline;
}();
/**
 * @member {String} _class
 */


Pipeline.prototype['_class'] = undefined;
/**
 * @member {String} organization
 */

Pipeline.prototype['organization'] = undefined;
/**
 * @member {String} name
 */

Pipeline.prototype['name'] = undefined;
/**
 * @member {String} displayName
 */

Pipeline.prototype['displayName'] = undefined;
/**
 * @member {String} fullName
 */

Pipeline.prototype['fullName'] = undefined;
/**
 * @member {Number} weatherScore
 */

Pipeline.prototype['weatherScore'] = undefined;
/**
 * @member {Number} estimatedDurationInMillis
 */

Pipeline.prototype['estimatedDurationInMillis'] = undefined;
/**
 * @member {module:model/PipelinelatestRun} latestRun
 */

Pipeline.prototype['latestRun'] = undefined;
var _default = Pipeline;
exports["default"] = _default;