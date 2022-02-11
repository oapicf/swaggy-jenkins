"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The QueueItemImpl model module.
 * @module model/QueueItemImpl
 * @version 1.1.2-pre.0
 */
var QueueItemImpl = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>QueueItemImpl</code>.
   * @alias module:model/QueueItemImpl
   */
  function QueueItemImpl() {
    _classCallCheck(this, QueueItemImpl);

    QueueItemImpl.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(QueueItemImpl, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>QueueItemImpl</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/QueueItemImpl} obj Optional instance to populate.
     * @return {module:model/QueueItemImpl} The populated <code>QueueItemImpl</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new QueueItemImpl();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('expectedBuildNumber')) {
          obj['expectedBuildNumber'] = _ApiClient["default"].convertToType(data['expectedBuildNumber'], 'Number');
        }

        if (data.hasOwnProperty('id')) {
          obj['id'] = _ApiClient["default"].convertToType(data['id'], 'String');
        }

        if (data.hasOwnProperty('pipeline')) {
          obj['pipeline'] = _ApiClient["default"].convertToType(data['pipeline'], 'String');
        }

        if (data.hasOwnProperty('queuedTime')) {
          obj['queuedTime'] = _ApiClient["default"].convertToType(data['queuedTime'], 'Number');
        }
      }

      return obj;
    }
  }]);

  return QueueItemImpl;
}();
/**
 * @member {String} _class
 */


QueueItemImpl.prototype['_class'] = undefined;
/**
 * @member {Number} expectedBuildNumber
 */

QueueItemImpl.prototype['expectedBuildNumber'] = undefined;
/**
 * @member {String} id
 */

QueueItemImpl.prototype['id'] = undefined;
/**
 * @member {String} pipeline
 */

QueueItemImpl.prototype['pipeline'] = undefined;
/**
 * @member {Number} queuedTime
 */

QueueItemImpl.prototype['queuedTime'] = undefined;
var _default = QueueItemImpl;
exports["default"] = _default;