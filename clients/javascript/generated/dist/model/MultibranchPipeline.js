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
 * The MultibranchPipeline model module.
 * @module model/MultibranchPipeline
 * @version 1.1.2-pre.0
 */
var MultibranchPipeline = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>MultibranchPipeline</code>.
   * @alias module:model/MultibranchPipeline
   */
  function MultibranchPipeline() {
    _classCallCheck(this, MultibranchPipeline);

    MultibranchPipeline.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(MultibranchPipeline, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>MultibranchPipeline</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/MultibranchPipeline} obj Optional instance to populate.
     * @return {module:model/MultibranchPipeline} The populated <code>MultibranchPipeline</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new MultibranchPipeline();

        if (data.hasOwnProperty('displayName')) {
          obj['displayName'] = _ApiClient["default"].convertToType(data['displayName'], 'String');
        }

        if (data.hasOwnProperty('estimatedDurationInMillis')) {
          obj['estimatedDurationInMillis'] = _ApiClient["default"].convertToType(data['estimatedDurationInMillis'], 'Number');
        }

        if (data.hasOwnProperty('latestRun')) {
          obj['latestRun'] = _ApiClient["default"].convertToType(data['latestRun'], 'String');
        }

        if (data.hasOwnProperty('name')) {
          obj['name'] = _ApiClient["default"].convertToType(data['name'], 'String');
        }

        if (data.hasOwnProperty('organization')) {
          obj['organization'] = _ApiClient["default"].convertToType(data['organization'], 'String');
        }

        if (data.hasOwnProperty('weatherScore')) {
          obj['weatherScore'] = _ApiClient["default"].convertToType(data['weatherScore'], 'Number');
        }

        if (data.hasOwnProperty('branchNames')) {
          obj['branchNames'] = _ApiClient["default"].convertToType(data['branchNames'], ['String']);
        }

        if (data.hasOwnProperty('numberOfFailingBranches')) {
          obj['numberOfFailingBranches'] = _ApiClient["default"].convertToType(data['numberOfFailingBranches'], 'Number');
        }

        if (data.hasOwnProperty('numberOfFailingPullRequests')) {
          obj['numberOfFailingPullRequests'] = _ApiClient["default"].convertToType(data['numberOfFailingPullRequests'], 'Number');
        }

        if (data.hasOwnProperty('numberOfSuccessfulBranches')) {
          obj['numberOfSuccessfulBranches'] = _ApiClient["default"].convertToType(data['numberOfSuccessfulBranches'], 'Number');
        }

        if (data.hasOwnProperty('numberOfSuccessfulPullRequests')) {
          obj['numberOfSuccessfulPullRequests'] = _ApiClient["default"].convertToType(data['numberOfSuccessfulPullRequests'], 'Number');
        }

        if (data.hasOwnProperty('totalNumberOfBranches')) {
          obj['totalNumberOfBranches'] = _ApiClient["default"].convertToType(data['totalNumberOfBranches'], 'Number');
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

  return MultibranchPipeline;
}();
/**
 * @member {String} displayName
 */


MultibranchPipeline.prototype['displayName'] = undefined;
/**
 * @member {Number} estimatedDurationInMillis
 */

MultibranchPipeline.prototype['estimatedDurationInMillis'] = undefined;
/**
 * @member {String} latestRun
 */

MultibranchPipeline.prototype['latestRun'] = undefined;
/**
 * @member {String} name
 */

MultibranchPipeline.prototype['name'] = undefined;
/**
 * @member {String} organization
 */

MultibranchPipeline.prototype['organization'] = undefined;
/**
 * @member {Number} weatherScore
 */

MultibranchPipeline.prototype['weatherScore'] = undefined;
/**
 * @member {Array.<String>} branchNames
 */

MultibranchPipeline.prototype['branchNames'] = undefined;
/**
 * @member {Number} numberOfFailingBranches
 */

MultibranchPipeline.prototype['numberOfFailingBranches'] = undefined;
/**
 * @member {Number} numberOfFailingPullRequests
 */

MultibranchPipeline.prototype['numberOfFailingPullRequests'] = undefined;
/**
 * @member {Number} numberOfSuccessfulBranches
 */

MultibranchPipeline.prototype['numberOfSuccessfulBranches'] = undefined;
/**
 * @member {Number} numberOfSuccessfulPullRequests
 */

MultibranchPipeline.prototype['numberOfSuccessfulPullRequests'] = undefined;
/**
 * @member {Number} totalNumberOfBranches
 */

MultibranchPipeline.prototype['totalNumberOfBranches'] = undefined;
/**
 * @member {Number} totalNumberOfPullRequests
 */

MultibranchPipeline.prototype['totalNumberOfPullRequests'] = undefined;
/**
 * @member {String} _class
 */

MultibranchPipeline.prototype['_class'] = undefined;
var _default = MultibranchPipeline;
exports["default"] = _default;