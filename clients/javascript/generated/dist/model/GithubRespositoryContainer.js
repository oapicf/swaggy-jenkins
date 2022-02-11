"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _GithubRepositories = _interopRequireDefault(require("./GithubRepositories"));

var _GithubRespositoryContainerlinks = _interopRequireDefault(require("./GithubRespositoryContainerlinks"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The GithubRespositoryContainer model module.
 * @module model/GithubRespositoryContainer
 * @version 1.1.2-pre.0
 */
var GithubRespositoryContainer = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>GithubRespositoryContainer</code>.
   * @alias module:model/GithubRespositoryContainer
   */
  function GithubRespositoryContainer() {
    _classCallCheck(this, GithubRespositoryContainer);

    GithubRespositoryContainer.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(GithubRespositoryContainer, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>GithubRespositoryContainer</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GithubRespositoryContainer} obj Optional instance to populate.
     * @return {module:model/GithubRespositoryContainer} The populated <code>GithubRespositoryContainer</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new GithubRespositoryContainer();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('_links')) {
          obj['_links'] = _GithubRespositoryContainerlinks["default"].constructFromObject(data['_links']);
        }

        if (data.hasOwnProperty('repositories')) {
          obj['repositories'] = _GithubRepositories["default"].constructFromObject(data['repositories']);
        }
      }

      return obj;
    }
  }]);

  return GithubRespositoryContainer;
}();
/**
 * @member {String} _class
 */


GithubRespositoryContainer.prototype['_class'] = undefined;
/**
 * @member {module:model/GithubRespositoryContainerlinks} _links
 */

GithubRespositoryContainer.prototype['_links'] = undefined;
/**
 * @member {module:model/GithubRepositories} repositories
 */

GithubRespositoryContainer.prototype['repositories'] = undefined;
var _default = GithubRespositoryContainer;
exports["default"] = _default;