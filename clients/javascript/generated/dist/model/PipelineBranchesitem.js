"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PipelineBranchesitemlatestRun = _interopRequireDefault(require("./PipelineBranchesitemlatestRun"));

var _PipelineBranchesitempullRequest = _interopRequireDefault(require("./PipelineBranchesitempullRequest"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The PipelineBranchesitem model module.
 * @module model/PipelineBranchesitem
 * @version 1.1.2-pre.0
 */
var PipelineBranchesitem = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>PipelineBranchesitem</code>.
   * @alias module:model/PipelineBranchesitem
   */
  function PipelineBranchesitem() {
    _classCallCheck(this, PipelineBranchesitem);

    PipelineBranchesitem.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(PipelineBranchesitem, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>PipelineBranchesitem</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PipelineBranchesitem} obj Optional instance to populate.
     * @return {module:model/PipelineBranchesitem} The populated <code>PipelineBranchesitem</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new PipelineBranchesitem();

        if (data.hasOwnProperty('displayName')) {
          obj['displayName'] = _ApiClient["default"].convertToType(data['displayName'], 'String');
        }

        if (data.hasOwnProperty('estimatedDurationInMillis')) {
          obj['estimatedDurationInMillis'] = _ApiClient["default"].convertToType(data['estimatedDurationInMillis'], 'Number');
        }

        if (data.hasOwnProperty('name')) {
          obj['name'] = _ApiClient["default"].convertToType(data['name'], 'String');
        }

        if (data.hasOwnProperty('weatherScore')) {
          obj['weatherScore'] = _ApiClient["default"].convertToType(data['weatherScore'], 'Number');
        }

        if (data.hasOwnProperty('latestRun')) {
          obj['latestRun'] = _PipelineBranchesitemlatestRun["default"].constructFromObject(data['latestRun']);
        }

        if (data.hasOwnProperty('organization')) {
          obj['organization'] = _ApiClient["default"].convertToType(data['organization'], 'String');
        }

        if (data.hasOwnProperty('pullRequest')) {
          obj['pullRequest'] = _PipelineBranchesitempullRequest["default"].constructFromObject(data['pullRequest']);
        }

        if (data.hasOwnProperty('totalNumberOfPullRequests')) {
          obj['totalNumberOfPullRequests'] = _ApiClient["default"].convertToType(data['totalNumberOfPullRequests'], 'Number');
        }

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }
      }

      return obj;
    }
  }]);

  return PipelineBranchesitem;
}();
/**
 * @member {String} displayName
 */


PipelineBranchesitem.prototype['displayName'] = undefined;
/**
 * @member {Number} estimatedDurationInMillis
 */

PipelineBranchesitem.prototype['estimatedDurationInMillis'] = undefined;
/**
 * @member {String} name
 */

PipelineBranchesitem.prototype['name'] = undefined;
/**
 * @member {Number} weatherScore
 */

PipelineBranchesitem.prototype['weatherScore'] = undefined;
/**
 * @member {module:model/PipelineBranchesitemlatestRun} latestRun
 */

PipelineBranchesitem.prototype['latestRun'] = undefined;
/**
 * @member {String} organization
 */

PipelineBranchesitem.prototype['organization'] = undefined;
/**
 * @member {module:model/PipelineBranchesitempullRequest} pullRequest
 */

PipelineBranchesitem.prototype['pullRequest'] = undefined;
/**
 * @member {Number} totalNumberOfPullRequests
 */

PipelineBranchesitem.prototype['totalNumberOfPullRequests'] = undefined;
/**
 * @member {String} _class
 */

PipelineBranchesitem.prototype['_class'] = undefined;
var _default = PipelineBranchesitem;
exports["default"] = _default;