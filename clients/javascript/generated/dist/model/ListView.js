"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FreeStyleProject = _interopRequireDefault(require("./FreeStyleProject"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The ListView model module.
 * @module model/ListView
 * @version 1.1.2-pre.0
 */
var ListView = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>ListView</code>.
   * @alias module:model/ListView
   */
  function ListView() {
    _classCallCheck(this, ListView);

    ListView.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(ListView, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>ListView</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ListView} obj Optional instance to populate.
     * @return {module:model/ListView} The populated <code>ListView</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new ListView();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('description')) {
          obj['description'] = _ApiClient["default"].convertToType(data['description'], 'String');
        }

        if (data.hasOwnProperty('jobs')) {
          obj['jobs'] = _ApiClient["default"].convertToType(data['jobs'], [_FreeStyleProject["default"]]);
        }

        if (data.hasOwnProperty('name')) {
          obj['name'] = _ApiClient["default"].convertToType(data['name'], 'String');
        }

        if (data.hasOwnProperty('url')) {
          obj['url'] = _ApiClient["default"].convertToType(data['url'], 'String');
        }
      }

      return obj;
    }
  }]);

  return ListView;
}();
/**
 * @member {String} _class
 */


ListView.prototype['_class'] = undefined;
/**
 * @member {String} description
 */

ListView.prototype['description'] = undefined;
/**
 * @member {Array.<module:model/FreeStyleProject>} jobs
 */

ListView.prototype['jobs'] = undefined;
/**
 * @member {String} name
 */

ListView.prototype['name'] = undefined;
/**
 * @member {String} url
 */

ListView.prototype['url'] = undefined;
var _default = ListView;
exports["default"] = _default;