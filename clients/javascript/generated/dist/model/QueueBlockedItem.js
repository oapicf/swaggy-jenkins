"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _CauseAction = _interopRequireDefault(require("./CauseAction"));

var _FreeStyleProject = _interopRequireDefault(require("./FreeStyleProject"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The QueueBlockedItem model module.
 * @module model/QueueBlockedItem
 * @version 1.1.2-pre.0
 */
var QueueBlockedItem = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>QueueBlockedItem</code>.
   * @alias module:model/QueueBlockedItem
   */
  function QueueBlockedItem() {
    _classCallCheck(this, QueueBlockedItem);

    QueueBlockedItem.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(QueueBlockedItem, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>QueueBlockedItem</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/QueueBlockedItem} obj Optional instance to populate.
     * @return {module:model/QueueBlockedItem} The populated <code>QueueBlockedItem</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new QueueBlockedItem();

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

        if (data.hasOwnProperty('buildableStartMilliseconds')) {
          obj['buildableStartMilliseconds'] = _ApiClient["default"].convertToType(data['buildableStartMilliseconds'], 'Number');
        }
      }

      return obj;
    }
  }]);

  return QueueBlockedItem;
}();
/**
 * @member {String} _class
 */


QueueBlockedItem.prototype['_class'] = undefined;
/**
 * @member {Array.<module:model/CauseAction>} actions
 */

QueueBlockedItem.prototype['actions'] = undefined;
/**
 * @member {Boolean} blocked
 */

QueueBlockedItem.prototype['blocked'] = undefined;
/**
 * @member {Boolean} buildable
 */

QueueBlockedItem.prototype['buildable'] = undefined;
/**
 * @member {Number} id
 */

QueueBlockedItem.prototype['id'] = undefined;
/**
 * @member {Number} inQueueSince
 */

QueueBlockedItem.prototype['inQueueSince'] = undefined;
/**
 * @member {String} params
 */

QueueBlockedItem.prototype['params'] = undefined;
/**
 * @member {Boolean} stuck
 */

QueueBlockedItem.prototype['stuck'] = undefined;
/**
 * @member {module:model/FreeStyleProject} task
 */

QueueBlockedItem.prototype['task'] = undefined;
/**
 * @member {String} url
 */

QueueBlockedItem.prototype['url'] = undefined;
/**
 * @member {String} why
 */

QueueBlockedItem.prototype['why'] = undefined;
/**
 * @member {Number} buildableStartMilliseconds
 */

QueueBlockedItem.prototype['buildableStartMilliseconds'] = undefined;
var _default = QueueBlockedItem;
exports["default"] = _default;