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
 * The GenericResource model module.
 * @module model/GenericResource
 * @version 1.1.2-pre.0
 */
var GenericResource = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>GenericResource</code>.
   * @alias module:model/GenericResource
   */
  function GenericResource() {
    _classCallCheck(this, GenericResource);

    GenericResource.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(GenericResource, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>GenericResource</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GenericResource} obj Optional instance to populate.
     * @return {module:model/GenericResource} The populated <code>GenericResource</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new GenericResource();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('displayName')) {
          obj['displayName'] = _ApiClient["default"].convertToType(data['displayName'], 'String');
        }

        if (data.hasOwnProperty('durationInMillis')) {
          obj['durationInMillis'] = _ApiClient["default"].convertToType(data['durationInMillis'], 'Number');
        }

        if (data.hasOwnProperty('id')) {
          obj['id'] = _ApiClient["default"].convertToType(data['id'], 'String');
        }

        if (data.hasOwnProperty('result')) {
          obj['result'] = _ApiClient["default"].convertToType(data['result'], 'String');
        }

        if (data.hasOwnProperty('startTime')) {
          obj['startTime'] = _ApiClient["default"].convertToType(data['startTime'], 'String');
        }
      }

      return obj;
    }
  }]);

  return GenericResource;
}();
/**
 * @member {String} _class
 */


GenericResource.prototype['_class'] = undefined;
/**
 * @member {String} displayName
 */

GenericResource.prototype['displayName'] = undefined;
/**
 * @member {Number} durationInMillis
 */

GenericResource.prototype['durationInMillis'] = undefined;
/**
 * @member {String} id
 */

GenericResource.prototype['id'] = undefined;
/**
 * @member {String} result
 */

GenericResource.prototype['result'] = undefined;
/**
 * @member {String} startTime
 */

GenericResource.prototype['startTime'] = undefined;
var _default = GenericResource;
exports["default"] = _default;