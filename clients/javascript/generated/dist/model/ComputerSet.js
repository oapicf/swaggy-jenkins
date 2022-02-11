"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _HudsonMasterComputer = _interopRequireDefault(require("./HudsonMasterComputer"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The ComputerSet model module.
 * @module model/ComputerSet
 * @version 1.1.2-pre.0
 */
var ComputerSet = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>ComputerSet</code>.
   * @alias module:model/ComputerSet
   */
  function ComputerSet() {
    _classCallCheck(this, ComputerSet);

    ComputerSet.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(ComputerSet, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>ComputerSet</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ComputerSet} obj Optional instance to populate.
     * @return {module:model/ComputerSet} The populated <code>ComputerSet</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new ComputerSet();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('busyExecutors')) {
          obj['busyExecutors'] = _ApiClient["default"].convertToType(data['busyExecutors'], 'Number');
        }

        if (data.hasOwnProperty('computer')) {
          obj['computer'] = _ApiClient["default"].convertToType(data['computer'], [_HudsonMasterComputer["default"]]);
        }

        if (data.hasOwnProperty('displayName')) {
          obj['displayName'] = _ApiClient["default"].convertToType(data['displayName'], 'String');
        }

        if (data.hasOwnProperty('totalExecutors')) {
          obj['totalExecutors'] = _ApiClient["default"].convertToType(data['totalExecutors'], 'Number');
        }
      }

      return obj;
    }
  }]);

  return ComputerSet;
}();
/**
 * @member {String} _class
 */


ComputerSet.prototype['_class'] = undefined;
/**
 * @member {Number} busyExecutors
 */

ComputerSet.prototype['busyExecutors'] = undefined;
/**
 * @member {Array.<module:model/HudsonMasterComputer>} computer
 */

ComputerSet.prototype['computer'] = undefined;
/**
 * @member {String} displayName
 */

ComputerSet.prototype['displayName'] = undefined;
/**
 * @member {Number} totalExecutors
 */

ComputerSet.prototype['totalExecutors'] = undefined;
var _default = ComputerSet;
exports["default"] = _default;