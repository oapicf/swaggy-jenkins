"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FavoriteImpllinks = _interopRequireDefault(require("./FavoriteImpllinks"));

var _PipelineImpl = _interopRequireDefault(require("./PipelineImpl"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The FavoriteImpl model module.
 * @module model/FavoriteImpl
 * @version 1.1.2-pre.0
 */
var FavoriteImpl = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>FavoriteImpl</code>.
   * @alias module:model/FavoriteImpl
   */
  function FavoriteImpl() {
    _classCallCheck(this, FavoriteImpl);

    FavoriteImpl.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(FavoriteImpl, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>FavoriteImpl</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/FavoriteImpl} obj Optional instance to populate.
     * @return {module:model/FavoriteImpl} The populated <code>FavoriteImpl</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new FavoriteImpl();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('_links')) {
          obj['_links'] = _FavoriteImpllinks["default"].constructFromObject(data['_links']);
        }

        if (data.hasOwnProperty('item')) {
          obj['item'] = _PipelineImpl["default"].constructFromObject(data['item']);
        }
      }

      return obj;
    }
  }]);

  return FavoriteImpl;
}();
/**
 * @member {String} _class
 */


FavoriteImpl.prototype['_class'] = undefined;
/**
 * @member {module:model/FavoriteImpllinks} _links
 */

FavoriteImpl.prototype['_links'] = undefined;
/**
 * @member {module:model/PipelineImpl} item
 */

FavoriteImpl.prototype['item'] = undefined;
var _default = FavoriteImpl;
exports["default"] = _default;