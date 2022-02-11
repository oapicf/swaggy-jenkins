"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _GithubRepositorylinks = _interopRequireDefault(require("./GithubRepositorylinks"));

var _GithubRepositorypermissions = _interopRequireDefault(require("./GithubRepositorypermissions"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The GithubRepository model module.
 * @module model/GithubRepository
 * @version 1.1.2-pre.0
 */
var GithubRepository = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>GithubRepository</code>.
   * @alias module:model/GithubRepository
   */
  function GithubRepository() {
    _classCallCheck(this, GithubRepository);

    GithubRepository.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(GithubRepository, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>GithubRepository</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GithubRepository} obj Optional instance to populate.
     * @return {module:model/GithubRepository} The populated <code>GithubRepository</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new GithubRepository();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('_links')) {
          obj['_links'] = _GithubRepositorylinks["default"].constructFromObject(data['_links']);
        }

        if (data.hasOwnProperty('defaultBranch')) {
          obj['defaultBranch'] = _ApiClient["default"].convertToType(data['defaultBranch'], 'String');
        }

        if (data.hasOwnProperty('description')) {
          obj['description'] = _ApiClient["default"].convertToType(data['description'], 'String');
        }

        if (data.hasOwnProperty('name')) {
          obj['name'] = _ApiClient["default"].convertToType(data['name'], 'String');
        }

        if (data.hasOwnProperty('permissions')) {
          obj['permissions'] = _GithubRepositorypermissions["default"].constructFromObject(data['permissions']);
        }

        if (data.hasOwnProperty('private')) {
          obj['private'] = _ApiClient["default"].convertToType(data['private'], 'Boolean');
        }

        if (data.hasOwnProperty('fullName')) {
          obj['fullName'] = _ApiClient["default"].convertToType(data['fullName'], 'String');
        }
      }

      return obj;
    }
  }]);

  return GithubRepository;
}();
/**
 * @member {String} _class
 */


GithubRepository.prototype['_class'] = undefined;
/**
 * @member {module:model/GithubRepositorylinks} _links
 */

GithubRepository.prototype['_links'] = undefined;
/**
 * @member {String} defaultBranch
 */

GithubRepository.prototype['defaultBranch'] = undefined;
/**
 * @member {String} description
 */

GithubRepository.prototype['description'] = undefined;
/**
 * @member {String} name
 */

GithubRepository.prototype['name'] = undefined;
/**
 * @member {module:model/GithubRepositorypermissions} permissions
 */

GithubRepository.prototype['permissions'] = undefined;
/**
 * @member {Boolean} private
 */

GithubRepository.prototype['private'] = undefined;
/**
 * @member {String} fullName
 */

GithubRepository.prototype['fullName'] = undefined;
var _default = GithubRepository;
exports["default"] = _default;