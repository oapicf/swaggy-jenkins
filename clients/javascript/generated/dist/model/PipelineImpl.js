"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PipelineImpllinks = _interopRequireDefault(require("./PipelineImpllinks"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The PipelineImpl model module.
 * @module model/PipelineImpl
 * @version 1.1.2-pre.0
 */
var PipelineImpl = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>PipelineImpl</code>.
   * @alias module:model/PipelineImpl
   */
  function PipelineImpl() {
    _classCallCheck(this, PipelineImpl);

    PipelineImpl.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(PipelineImpl, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>PipelineImpl</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PipelineImpl} obj Optional instance to populate.
     * @return {module:model/PipelineImpl} The populated <code>PipelineImpl</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new PipelineImpl();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('displayName')) {
          obj['displayName'] = _ApiClient["default"].convertToType(data['displayName'], 'String');
        }

        if (data.hasOwnProperty('estimatedDurationInMillis')) {
          obj['estimatedDurationInMillis'] = _ApiClient["default"].convertToType(data['estimatedDurationInMillis'], 'Number');
        }

        if (data.hasOwnProperty('fullName')) {
          obj['fullName'] = _ApiClient["default"].convertToType(data['fullName'], 'String');
        }

        if (data.hasOwnProperty('latestRun')) {
          obj['latestRun'] = _ApiClient["default"].convertToType(data['latestRun'], 'String');
        }

        if (data.hasOwnProperty('name')) {
          obj['name'] = _ApiClient["default"].convertToType(data['name'], 'String');
        }

        if (data.hasOwnProperty('organization')) {
          obj['organization'] = _ApiClient["default"].convertToType(data['organization'], 'String');
        }

        if (data.hasOwnProperty('weatherScore')) {
          obj['weatherScore'] = _ApiClient["default"].convertToType(data['weatherScore'], 'Number');
        }

        if (data.hasOwnProperty('_links')) {
          obj['_links'] = _PipelineImpllinks["default"].constructFromObject(data['_links']);
        }
      }

      return obj;
    }
  }]);

  return PipelineImpl;
}();
/**
 * @member {String} _class
 */


PipelineImpl.prototype['_class'] = undefined;
/**
 * @member {String} displayName
 */

PipelineImpl.prototype['displayName'] = undefined;
/**
 * @member {Number} estimatedDurationInMillis
 */

PipelineImpl.prototype['estimatedDurationInMillis'] = undefined;
/**
 * @member {String} fullName
 */

PipelineImpl.prototype['fullName'] = undefined;
/**
 * @member {String} latestRun
 */

PipelineImpl.prototype['latestRun'] = undefined;
/**
 * @member {String} name
 */

PipelineImpl.prototype['name'] = undefined;
/**
 * @member {String} organization
 */

PipelineImpl.prototype['organization'] = undefined;
/**
 * @member {Number} weatherScore
 */

PipelineImpl.prototype['weatherScore'] = undefined;
/**
 * @member {module:model/PipelineImpllinks} _links
 */

PipelineImpl.prototype['_links'] = undefined;
var _default = PipelineImpl;
exports["default"] = _default;