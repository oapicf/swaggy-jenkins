"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _BranchImpllinks = _interopRequireDefault(require("./BranchImpllinks"));

var _BranchImplpermissions = _interopRequireDefault(require("./BranchImplpermissions"));

var _PipelineRunImpl = _interopRequireDefault(require("./PipelineRunImpl"));

var _StringParameterDefinition = _interopRequireDefault(require("./StringParameterDefinition"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The BranchImpl model module.
 * @module model/BranchImpl
 * @version 1.1.2-pre.0
 */
var BranchImpl = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>BranchImpl</code>.
   * @alias module:model/BranchImpl
   */
  function BranchImpl() {
    _classCallCheck(this, BranchImpl);

    BranchImpl.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(BranchImpl, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>BranchImpl</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/BranchImpl} obj Optional instance to populate.
     * @return {module:model/BranchImpl} The populated <code>BranchImpl</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new BranchImpl();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('displayName')) {
          obj['displayName'] = _ApiClient["default"].convertToType(data['displayName'], 'String');
        }

        if (data.hasOwnProperty('estimatedDurationInMillis')) {
          obj['estimatedDurationInMillis'] = _ApiClient["default"].convertToType(data['estimatedDurationInMillis'], 'Number');
        }

        if (data.hasOwnProperty('fullDisplayName')) {
          obj['fullDisplayName'] = _ApiClient["default"].convertToType(data['fullDisplayName'], 'String');
        }

        if (data.hasOwnProperty('fullName')) {
          obj['fullName'] = _ApiClient["default"].convertToType(data['fullName'], 'String');
        }

        if (data.hasOwnProperty('name')) {
          obj['name'] = _ApiClient["default"].convertToType(data['name'], 'String');
        }

        if (data.hasOwnProperty('organization')) {
          obj['organization'] = _ApiClient["default"].convertToType(data['organization'], 'String');
        }

        if (data.hasOwnProperty('parameters')) {
          obj['parameters'] = _ApiClient["default"].convertToType(data['parameters'], [_StringParameterDefinition["default"]]);
        }

        if (data.hasOwnProperty('permissions')) {
          obj['permissions'] = _BranchImplpermissions["default"].constructFromObject(data['permissions']);
        }

        if (data.hasOwnProperty('weatherScore')) {
          obj['weatherScore'] = _ApiClient["default"].convertToType(data['weatherScore'], 'Number');
        }

        if (data.hasOwnProperty('pullRequest')) {
          obj['pullRequest'] = _ApiClient["default"].convertToType(data['pullRequest'], 'String');
        }

        if (data.hasOwnProperty('_links')) {
          obj['_links'] = _BranchImpllinks["default"].constructFromObject(data['_links']);
        }

        if (data.hasOwnProperty('latestRun')) {
          obj['latestRun'] = _PipelineRunImpl["default"].constructFromObject(data['latestRun']);
        }
      }

      return obj;
    }
  }]);

  return BranchImpl;
}();
/**
 * @member {String} _class
 */


BranchImpl.prototype['_class'] = undefined;
/**
 * @member {String} displayName
 */

BranchImpl.prototype['displayName'] = undefined;
/**
 * @member {Number} estimatedDurationInMillis
 */

BranchImpl.prototype['estimatedDurationInMillis'] = undefined;
/**
 * @member {String} fullDisplayName
 */

BranchImpl.prototype['fullDisplayName'] = undefined;
/**
 * @member {String} fullName
 */

BranchImpl.prototype['fullName'] = undefined;
/**
 * @member {String} name
 */

BranchImpl.prototype['name'] = undefined;
/**
 * @member {String} organization
 */

BranchImpl.prototype['organization'] = undefined;
/**
 * @member {Array.<module:model/StringParameterDefinition>} parameters
 */

BranchImpl.prototype['parameters'] = undefined;
/**
 * @member {module:model/BranchImplpermissions} permissions
 */

BranchImpl.prototype['permissions'] = undefined;
/**
 * @member {Number} weatherScore
 */

BranchImpl.prototype['weatherScore'] = undefined;
/**
 * @member {String} pullRequest
 */

BranchImpl.prototype['pullRequest'] = undefined;
/**
 * @member {module:model/BranchImpllinks} _links
 */

BranchImpl.prototype['_links'] = undefined;
/**
 * @member {module:model/PipelineRunImpl} latestRun
 */

BranchImpl.prototype['latestRun'] = undefined;
var _default = BranchImpl;
exports["default"] = _default;