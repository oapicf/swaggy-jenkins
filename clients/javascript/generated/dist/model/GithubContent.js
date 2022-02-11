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
 * The GithubContent model module.
 * @module model/GithubContent
 * @version 1.1.2-pre.0
 */
var GithubContent = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>GithubContent</code>.
   * @alias module:model/GithubContent
   */
  function GithubContent() {
    _classCallCheck(this, GithubContent);

    GithubContent.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(GithubContent, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>GithubContent</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GithubContent} obj Optional instance to populate.
     * @return {module:model/GithubContent} The populated <code>GithubContent</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new GithubContent();

        if (data.hasOwnProperty('name')) {
          obj['name'] = _ApiClient["default"].convertToType(data['name'], 'String');
        }

        if (data.hasOwnProperty('sha')) {
          obj['sha'] = _ApiClient["default"].convertToType(data['sha'], 'String');
        }

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('repo')) {
          obj['repo'] = _ApiClient["default"].convertToType(data['repo'], 'String');
        }

        if (data.hasOwnProperty('size')) {
          obj['size'] = _ApiClient["default"].convertToType(data['size'], 'Number');
        }

        if (data.hasOwnProperty('owner')) {
          obj['owner'] = _ApiClient["default"].convertToType(data['owner'], 'String');
        }

        if (data.hasOwnProperty('path')) {
          obj['path'] = _ApiClient["default"].convertToType(data['path'], 'String');
        }

        if (data.hasOwnProperty('base64Data')) {
          obj['base64Data'] = _ApiClient["default"].convertToType(data['base64Data'], 'String');
        }
      }

      return obj;
    }
  }]);

  return GithubContent;
}();
/**
 * @member {String} name
 */


GithubContent.prototype['name'] = undefined;
/**
 * @member {String} sha
 */

GithubContent.prototype['sha'] = undefined;
/**
 * @member {String} _class
 */

GithubContent.prototype['_class'] = undefined;
/**
 * @member {String} repo
 */

GithubContent.prototype['repo'] = undefined;
/**
 * @member {Number} size
 */

GithubContent.prototype['size'] = undefined;
/**
 * @member {String} owner
 */

GithubContent.prototype['owner'] = undefined;
/**
 * @member {String} path
 */

GithubContent.prototype['path'] = undefined;
/**
 * @member {String} base64Data
 */

GithubContent.prototype['base64Data'] = undefined;
var _default = GithubContent;
exports["default"] = _default;