"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _GithubRepositorieslinks = _interopRequireDefault(require("./GithubRepositorieslinks"));

var _GithubRepository = _interopRequireDefault(require("./GithubRepository"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The GithubRepositories model module.
 * @module model/GithubRepositories
 * @version 1.1.2-pre.0
 */
var GithubRepositories = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>GithubRepositories</code>.
   * @alias module:model/GithubRepositories
   */
  function GithubRepositories() {
    _classCallCheck(this, GithubRepositories);

    GithubRepositories.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(GithubRepositories, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>GithubRepositories</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GithubRepositories} obj Optional instance to populate.
     * @return {module:model/GithubRepositories} The populated <code>GithubRepositories</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new GithubRepositories();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('_links')) {
          obj['_links'] = _GithubRepositorieslinks["default"].constructFromObject(data['_links']);
        }

        if (data.hasOwnProperty('items')) {
          obj['items'] = _ApiClient["default"].convertToType(data['items'], [_GithubRepository["default"]]);
        }

        if (data.hasOwnProperty('lastPage')) {
          obj['lastPage'] = _ApiClient["default"].convertToType(data['lastPage'], 'Number');
        }

        if (data.hasOwnProperty('nextPage')) {
          obj['nextPage'] = _ApiClient["default"].convertToType(data['nextPage'], 'Number');
        }

        if (data.hasOwnProperty('pageSize')) {
          obj['pageSize'] = _ApiClient["default"].convertToType(data['pageSize'], 'Number');
        }
      }

      return obj;
    }
  }]);

  return GithubRepositories;
}();
/**
 * @member {String} _class
 */


GithubRepositories.prototype['_class'] = undefined;
/**
 * @member {module:model/GithubRepositorieslinks} _links
 */

GithubRepositories.prototype['_links'] = undefined;
/**
 * @member {Array.<module:model/GithubRepository>} items
 */

GithubRepositories.prototype['items'] = undefined;
/**
 * @member {Number} lastPage
 */

GithubRepositories.prototype['lastPage'] = undefined;
/**
 * @member {Number} nextPage
 */

GithubRepositories.prototype['nextPage'] = undefined;
/**
 * @member {Number} pageSize
 */

GithubRepositories.prototype['pageSize'] = undefined;
var _default = GithubRepositories;
exports["default"] = _default;