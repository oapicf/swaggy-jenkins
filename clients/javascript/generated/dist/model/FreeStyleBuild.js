"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _CauseAction = _interopRequireDefault(require("./CauseAction"));

var _EmptyChangeLogSet = _interopRequireDefault(require("./EmptyChangeLogSet"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The FreeStyleBuild model module.
 * @module model/FreeStyleBuild
 * @version 1.1.2-pre.0
 */
var FreeStyleBuild = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>FreeStyleBuild</code>.
   * @alias module:model/FreeStyleBuild
   */
  function FreeStyleBuild() {
    _classCallCheck(this, FreeStyleBuild);

    FreeStyleBuild.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(FreeStyleBuild, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>FreeStyleBuild</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/FreeStyleBuild} obj Optional instance to populate.
     * @return {module:model/FreeStyleBuild} The populated <code>FreeStyleBuild</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new FreeStyleBuild();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('number')) {
          obj['number'] = _ApiClient["default"].convertToType(data['number'], 'Number');
        }

        if (data.hasOwnProperty('url')) {
          obj['url'] = _ApiClient["default"].convertToType(data['url'], 'String');
        }

        if (data.hasOwnProperty('actions')) {
          obj['actions'] = _ApiClient["default"].convertToType(data['actions'], [_CauseAction["default"]]);
        }

        if (data.hasOwnProperty('building')) {
          obj['building'] = _ApiClient["default"].convertToType(data['building'], 'Boolean');
        }

        if (data.hasOwnProperty('description')) {
          obj['description'] = _ApiClient["default"].convertToType(data['description'], 'String');
        }

        if (data.hasOwnProperty('displayName')) {
          obj['displayName'] = _ApiClient["default"].convertToType(data['displayName'], 'String');
        }

        if (data.hasOwnProperty('duration')) {
          obj['duration'] = _ApiClient["default"].convertToType(data['duration'], 'Number');
        }

        if (data.hasOwnProperty('estimatedDuration')) {
          obj['estimatedDuration'] = _ApiClient["default"].convertToType(data['estimatedDuration'], 'Number');
        }

        if (data.hasOwnProperty('executor')) {
          obj['executor'] = _ApiClient["default"].convertToType(data['executor'], 'String');
        }

        if (data.hasOwnProperty('fullDisplayName')) {
          obj['fullDisplayName'] = _ApiClient["default"].convertToType(data['fullDisplayName'], 'String');
        }

        if (data.hasOwnProperty('id')) {
          obj['id'] = _ApiClient["default"].convertToType(data['id'], 'String');
        }

        if (data.hasOwnProperty('keepLog')) {
          obj['keepLog'] = _ApiClient["default"].convertToType(data['keepLog'], 'Boolean');
        }

        if (data.hasOwnProperty('queueId')) {
          obj['queueId'] = _ApiClient["default"].convertToType(data['queueId'], 'Number');
        }

        if (data.hasOwnProperty('result')) {
          obj['result'] = _ApiClient["default"].convertToType(data['result'], 'String');
        }

        if (data.hasOwnProperty('timestamp')) {
          obj['timestamp'] = _ApiClient["default"].convertToType(data['timestamp'], 'Number');
        }

        if (data.hasOwnProperty('builtOn')) {
          obj['builtOn'] = _ApiClient["default"].convertToType(data['builtOn'], 'String');
        }

        if (data.hasOwnProperty('changeSet')) {
          obj['changeSet'] = _EmptyChangeLogSet["default"].constructFromObject(data['changeSet']);
        }
      }

      return obj;
    }
  }]);

  return FreeStyleBuild;
}();
/**
 * @member {String} _class
 */


FreeStyleBuild.prototype['_class'] = undefined;
/**
 * @member {Number} number
 */

FreeStyleBuild.prototype['number'] = undefined;
/**
 * @member {String} url
 */

FreeStyleBuild.prototype['url'] = undefined;
/**
 * @member {Array.<module:model/CauseAction>} actions
 */

FreeStyleBuild.prototype['actions'] = undefined;
/**
 * @member {Boolean} building
 */

FreeStyleBuild.prototype['building'] = undefined;
/**
 * @member {String} description
 */

FreeStyleBuild.prototype['description'] = undefined;
/**
 * @member {String} displayName
 */

FreeStyleBuild.prototype['displayName'] = undefined;
/**
 * @member {Number} duration
 */

FreeStyleBuild.prototype['duration'] = undefined;
/**
 * @member {Number} estimatedDuration
 */

FreeStyleBuild.prototype['estimatedDuration'] = undefined;
/**
 * @member {String} executor
 */

FreeStyleBuild.prototype['executor'] = undefined;
/**
 * @member {String} fullDisplayName
 */

FreeStyleBuild.prototype['fullDisplayName'] = undefined;
/**
 * @member {String} id
 */

FreeStyleBuild.prototype['id'] = undefined;
/**
 * @member {Boolean} keepLog
 */

FreeStyleBuild.prototype['keepLog'] = undefined;
/**
 * @member {Number} queueId
 */

FreeStyleBuild.prototype['queueId'] = undefined;
/**
 * @member {String} result
 */

FreeStyleBuild.prototype['result'] = undefined;
/**
 * @member {Number} timestamp
 */

FreeStyleBuild.prototype['timestamp'] = undefined;
/**
 * @member {String} builtOn
 */

FreeStyleBuild.prototype['builtOn'] = undefined;
/**
 * @member {module:model/EmptyChangeLogSet} changeSet
 */

FreeStyleBuild.prototype['changeSet'] = undefined;
var _default = FreeStyleBuild;
exports["default"] = _default;