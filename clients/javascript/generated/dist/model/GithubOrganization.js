"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _GithubOrganizationlinks = _interopRequireDefault(require("./GithubOrganizationlinks"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The GithubOrganization model module.
 * @module model/GithubOrganization
 * @version 1.1.2-pre.0
 */
var GithubOrganization = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>GithubOrganization</code>.
   * @alias module:model/GithubOrganization
   */
  function GithubOrganization() {
    _classCallCheck(this, GithubOrganization);

    GithubOrganization.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(GithubOrganization, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>GithubOrganization</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GithubOrganization} obj Optional instance to populate.
     * @return {module:model/GithubOrganization} The populated <code>GithubOrganization</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new GithubOrganization();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('_links')) {
          obj['_links'] = _GithubOrganizationlinks["default"].constructFromObject(data['_links']);
        }

        if (data.hasOwnProperty('jenkinsOrganizationPipeline')) {
          obj['jenkinsOrganizationPipeline'] = _ApiClient["default"].convertToType(data['jenkinsOrganizationPipeline'], 'Boolean');
        }

        if (data.hasOwnProperty('name')) {
          obj['name'] = _ApiClient["default"].convertToType(data['name'], 'String');
        }
      }

      return obj;
    }
  }]);

  return GithubOrganization;
}();
/**
 * @member {String} _class
 */


GithubOrganization.prototype['_class'] = undefined;
/**
 * @member {module:model/GithubOrganizationlinks} _links
 */

GithubOrganization.prototype['_links'] = undefined;
/**
 * @member {Boolean} jenkinsOrganizationPipeline
 */

GithubOrganization.prototype['jenkinsOrganizationPipeline'] = undefined;
/**
 * @member {String} name
 */

GithubOrganization.prototype['name'] = undefined;
var _default = GithubOrganization;
exports["default"] = _default;