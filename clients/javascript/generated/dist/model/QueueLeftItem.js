"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _CauseAction = _interopRequireDefault(require("./CauseAction"));

var _FreeStyleBuild = _interopRequireDefault(require("./FreeStyleBuild"));

var _FreeStyleProject = _interopRequireDefault(require("./FreeStyleProject"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The QueueLeftItem model module.
 * @module model/QueueLeftItem
 * @version 1.1.2-pre.0
 */
var QueueLeftItem = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>QueueLeftItem</code>.
   * @alias module:model/QueueLeftItem
   */
  function QueueLeftItem() {
    _classCallCheck(this, QueueLeftItem);

    QueueLeftItem.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(QueueLeftItem, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>QueueLeftItem</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/QueueLeftItem} obj Optional instance to populate.
     * @return {module:model/QueueLeftItem} The populated <code>QueueLeftItem</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new QueueLeftItem();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('actions')) {
          obj['actions'] = _ApiClient["default"].convertToType(data['actions'], [_CauseAction["default"]]);
        }

        if (data.hasOwnProperty('blocked')) {
          obj['blocked'] = _ApiClient["default"].convertToType(data['blocked'], 'Boolean');
        }

        if (data.hasOwnProperty('buildable')) {
          obj['buildable'] = _ApiClient["default"].convertToType(data['buildable'], 'Boolean');
        }

        if (data.hasOwnProperty('id')) {
          obj['id'] = _ApiClient["default"].convertToType(data['id'], 'Number');
        }

        if (data.hasOwnProperty('inQueueSince')) {
          obj['inQueueSince'] = _ApiClient["default"].convertToType(data['inQueueSince'], 'Number');
        }

        if (data.hasOwnProperty('params')) {
          obj['params'] = _ApiClient["default"].convertToType(data['params'], 'String');
        }

        if (data.hasOwnProperty('stuck')) {
          obj['stuck'] = _ApiClient["default"].convertToType(data['stuck'], 'Boolean');
        }

        if (data.hasOwnProperty('task')) {
          obj['task'] = _FreeStyleProject["default"].constructFromObject(data['task']);
        }

        if (data.hasOwnProperty('url')) {
          obj['url'] = _ApiClient["default"].convertToType(data['url'], 'String');
        }

        if (data.hasOwnProperty('why')) {
          obj['why'] = _ApiClient["default"].convertToType(data['why'], 'String');
        }

        if (data.hasOwnProperty('cancelled')) {
          obj['cancelled'] = _ApiClient["default"].convertToType(data['cancelled'], 'Boolean');
        }

        if (data.hasOwnProperty('executable')) {
          obj['executable'] = _FreeStyleBuild["default"].constructFromObject(data['executable']);
        }
      }

      return obj;
    }
  }]);

  return QueueLeftItem;
}();
/**
 * @member {String} _class
 */


QueueLeftItem.prototype['_class'] = undefined;
/**
 * @member {Array.<module:model/CauseAction>} actions
 */

QueueLeftItem.prototype['actions'] = undefined;
/**
 * @member {Boolean} blocked
 */

QueueLeftItem.prototype['blocked'] = undefined;
/**
 * @member {Boolean} buildable
 */

QueueLeftItem.prototype['buildable'] = undefined;
/**
 * @member {Number} id
 */

QueueLeftItem.prototype['id'] = undefined;
/**
 * @member {Number} inQueueSince
 */

QueueLeftItem.prototype['inQueueSince'] = undefined;
/**
 * @member {String} params
 */

QueueLeftItem.prototype['params'] = undefined;
/**
 * @member {Boolean} stuck
 */

QueueLeftItem.prototype['stuck'] = undefined;
/**
 * @member {module:model/FreeStyleProject} task
 */

QueueLeftItem.prototype['task'] = undefined;
/**
 * @member {String} url
 */

QueueLeftItem.prototype['url'] = undefined;
/**
 * @member {String} why
 */

QueueLeftItem.prototype['why'] = undefined;
/**
 * @member {Boolean} cancelled
 */

QueueLeftItem.prototype['cancelled'] = undefined;
/**
 * @member {module:model/FreeStyleBuild} executable
 */

QueueLeftItem.prototype['executable'] = undefined;
var _default = QueueLeftItem;
exports["default"] = _default;