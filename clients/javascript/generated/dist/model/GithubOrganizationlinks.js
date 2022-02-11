"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Link = _interopRequireDefault(require("./Link"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The GithubOrganizationlinks model module.
 * @module model/GithubOrganizationlinks
 * @version 1.1.2-pre.0
 */
var GithubOrganizationlinks = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>GithubOrganizationlinks</code>.
   * @alias module:model/GithubOrganizationlinks
   */
  function GithubOrganizationlinks() {
    _classCallCheck(this, GithubOrganizationlinks);

    GithubOrganizationlinks.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(GithubOrganizationlinks, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>GithubOrganizationlinks</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GithubOrganizationlinks} obj Optional instance to populate.
     * @return {module:model/GithubOrganizationlinks} The populated <code>GithubOrganizationlinks</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new GithubOrganizationlinks();

        if (data.hasOwnProperty('repositories')) {
          obj['repositories'] = _Link["default"].constructFromObject(data['repositories']);
        }

        if (data.hasOwnProperty('self')) {
          obj['self'] = _Link["default"].constructFromObject(data['self']);
        }

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }
      }

      return obj;
    }
  }]);

  return GithubOrganizationlinks;
}();
/**
 * @member {module:model/Link} repositories
 */


GithubOrganizationlinks.prototype['repositories'] = undefined;
/**
 * @member {module:model/Link} self
 */

GithubOrganizationlinks.prototype['self'] = undefined;
/**
 * @member {String} _class
 */

GithubOrganizationlinks.prototype['_class'] = undefined;
var _default = GithubOrganizationlinks;
exports["default"] = _default;