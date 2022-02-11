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
 * The EmptyChangeLogSet model module.
 * @module model/EmptyChangeLogSet
 * @version 1.1.2-pre.0
 */
var EmptyChangeLogSet = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>EmptyChangeLogSet</code>.
   * @alias module:model/EmptyChangeLogSet
   */
  function EmptyChangeLogSet() {
    _classCallCheck(this, EmptyChangeLogSet);

    EmptyChangeLogSet.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(EmptyChangeLogSet, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>EmptyChangeLogSet</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/EmptyChangeLogSet} obj Optional instance to populate.
     * @return {module:model/EmptyChangeLogSet} The populated <code>EmptyChangeLogSet</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new EmptyChangeLogSet();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('kind')) {
          obj['kind'] = _ApiClient["default"].convertToType(data['kind'], 'String');
        }
      }

      return obj;
    }
  }]);

  return EmptyChangeLogSet;
}();
/**
 * @member {String} _class
 */


EmptyChangeLogSet.prototype['_class'] = undefined;
/**
 * @member {String} kind
 */

EmptyChangeLogSet.prototype['kind'] = undefined;
var _default = EmptyChangeLogSet;
exports["default"] = _default;