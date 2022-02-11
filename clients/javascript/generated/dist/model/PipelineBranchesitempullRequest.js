"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PipelineBranchesitempullRequestlinks = _interopRequireDefault(require("./PipelineBranchesitempullRequestlinks"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The PipelineBranchesitempullRequest model module.
 * @module model/PipelineBranchesitempullRequest
 * @version 1.1.2-pre.0
 */
var PipelineBranchesitempullRequest = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>PipelineBranchesitempullRequest</code>.
   * @alias module:model/PipelineBranchesitempullRequest
   */
  function PipelineBranchesitempullRequest() {
    _classCallCheck(this, PipelineBranchesitempullRequest);

    PipelineBranchesitempullRequest.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(PipelineBranchesitempullRequest, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>PipelineBranchesitempullRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PipelineBranchesitempullRequest} obj Optional instance to populate.
     * @return {module:model/PipelineBranchesitempullRequest} The populated <code>PipelineBranchesitempullRequest</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new PipelineBranchesitempullRequest();

        if (data.hasOwnProperty('_links')) {
          obj['_links'] = _PipelineBranchesitempullRequestlinks["default"].constructFromObject(data['_links']);
        }

        if (data.hasOwnProperty('author')) {
          obj['author'] = _ApiClient["default"].convertToType(data['author'], 'String');
        }

        if (data.hasOwnProperty('id')) {
          obj['id'] = _ApiClient["default"].convertToType(data['id'], 'String');
        }

        if (data.hasOwnProperty('title')) {
          obj['title'] = _ApiClient["default"].convertToType(data['title'], 'String');
        }

        if (data.hasOwnProperty('url')) {
          obj['url'] = _ApiClient["default"].convertToType(data['url'], 'String');
        }

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }
      }

      return obj;
    }
  }]);

  return PipelineBranchesitempullRequest;
}();
/**
 * @member {module:model/PipelineBranchesitempullRequestlinks} _links
 */


PipelineBranchesitempullRequest.prototype['_links'] = undefined;
/**
 * @member {String} author
 */

PipelineBranchesitempullRequest.prototype['author'] = undefined;
/**
 * @member {String} id
 */

PipelineBranchesitempullRequest.prototype['id'] = undefined;
/**
 * @member {String} title
 */

PipelineBranchesitempullRequest.prototype['title'] = undefined;
/**
 * @member {String} url
 */

PipelineBranchesitempullRequest.prototype['url'] = undefined;
/**
 * @member {String} _class
 */

PipelineBranchesitempullRequest.prototype['_class'] = undefined;
var _default = PipelineBranchesitempullRequest;
exports["default"] = _default;