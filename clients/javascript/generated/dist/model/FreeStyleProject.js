"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FreeStyleBuild = _interopRequireDefault(require("./FreeStyleBuild"));

var _FreeStyleProjectactions = _interopRequireDefault(require("./FreeStyleProjectactions"));

var _FreeStyleProjecthealthReport = _interopRequireDefault(require("./FreeStyleProjecthealthReport"));

var _NullSCM = _interopRequireDefault(require("./NullSCM"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
 * The FreeStyleProject model module.
 * @module model/FreeStyleProject
 * @version 1.1.2-pre.0
 */
var FreeStyleProject = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>FreeStyleProject</code>.
   * @alias module:model/FreeStyleProject
   */
  function FreeStyleProject() {
    _classCallCheck(this, FreeStyleProject);

    FreeStyleProject.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(FreeStyleProject, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>FreeStyleProject</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/FreeStyleProject} obj Optional instance to populate.
     * @return {module:model/FreeStyleProject} The populated <code>FreeStyleProject</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new FreeStyleProject();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('name')) {
          obj['name'] = _ApiClient["default"].convertToType(data['name'], 'String');
        }

        if (data.hasOwnProperty('url')) {
          obj['url'] = _ApiClient["default"].convertToType(data['url'], 'String');
        }

        if (data.hasOwnProperty('color')) {
          obj['color'] = _ApiClient["default"].convertToType(data['color'], 'String');
        }

        if (data.hasOwnProperty('actions')) {
          obj['actions'] = _ApiClient["default"].convertToType(data['actions'], [_FreeStyleProjectactions["default"]]);
        }

        if (data.hasOwnProperty('description')) {
          obj['description'] = _ApiClient["default"].convertToType(data['description'], 'String');
        }

        if (data.hasOwnProperty('displayName')) {
          obj['displayName'] = _ApiClient["default"].convertToType(data['displayName'], 'String');
        }

        if (data.hasOwnProperty('displayNameOrNull')) {
          obj['displayNameOrNull'] = _ApiClient["default"].convertToType(data['displayNameOrNull'], 'String');
        }

        if (data.hasOwnProperty('fullDisplayName')) {
          obj['fullDisplayName'] = _ApiClient["default"].convertToType(data['fullDisplayName'], 'String');
        }

        if (data.hasOwnProperty('fullName')) {
          obj['fullName'] = _ApiClient["default"].convertToType(data['fullName'], 'String');
        }

        if (data.hasOwnProperty('buildable')) {
          obj['buildable'] = _ApiClient["default"].convertToType(data['buildable'], 'Boolean');
        }

        if (data.hasOwnProperty('builds')) {
          obj['builds'] = _ApiClient["default"].convertToType(data['builds'], [_FreeStyleBuild["default"]]);
        }

        if (data.hasOwnProperty('firstBuild')) {
          obj['firstBuild'] = _FreeStyleBuild["default"].constructFromObject(data['firstBuild']);
        }

        if (data.hasOwnProperty('healthReport')) {
          obj['healthReport'] = _ApiClient["default"].convertToType(data['healthReport'], [_FreeStyleProjecthealthReport["default"]]);
        }

        if (data.hasOwnProperty('inQueue')) {
          obj['inQueue'] = _ApiClient["default"].convertToType(data['inQueue'], 'Boolean');
        }

        if (data.hasOwnProperty('keepDependencies')) {
          obj['keepDependencies'] = _ApiClient["default"].convertToType(data['keepDependencies'], 'Boolean');
        }

        if (data.hasOwnProperty('lastBuild')) {
          obj['lastBuild'] = _FreeStyleBuild["default"].constructFromObject(data['lastBuild']);
        }

        if (data.hasOwnProperty('lastCompletedBuild')) {
          obj['lastCompletedBuild'] = _FreeStyleBuild["default"].constructFromObject(data['lastCompletedBuild']);
        }

        if (data.hasOwnProperty('lastFailedBuild')) {
          obj['lastFailedBuild'] = _ApiClient["default"].convertToType(data['lastFailedBuild'], 'String');
        }

        if (data.hasOwnProperty('lastStableBuild')) {
          obj['lastStableBuild'] = _FreeStyleBuild["default"].constructFromObject(data['lastStableBuild']);
        }

        if (data.hasOwnProperty('lastSuccessfulBuild')) {
          obj['lastSuccessfulBuild'] = _FreeStyleBuild["default"].constructFromObject(data['lastSuccessfulBuild']);
        }

        if (data.hasOwnProperty('lastUnstableBuild')) {
          obj['lastUnstableBuild'] = _ApiClient["default"].convertToType(data['lastUnstableBuild'], 'String');
        }

        if (data.hasOwnProperty('lastUnsuccessfulBuild')) {
          obj['lastUnsuccessfulBuild'] = _ApiClient["default"].convertToType(data['lastUnsuccessfulBuild'], 'String');
        }

        if (data.hasOwnProperty('nextBuildNumber')) {
          obj['nextBuildNumber'] = _ApiClient["default"].convertToType(data['nextBuildNumber'], 'Number');
        }

        if (data.hasOwnProperty('queueItem')) {
          obj['queueItem'] = _ApiClient["default"].convertToType(data['queueItem'], 'String');
        }

        if (data.hasOwnProperty('concurrentBuild')) {
          obj['concurrentBuild'] = _ApiClient["default"].convertToType(data['concurrentBuild'], 'Boolean');
        }

        if (data.hasOwnProperty('scm')) {
          obj['scm'] = _NullSCM["default"].constructFromObject(data['scm']);
        }
      }

      return obj;
    }
  }]);

  return FreeStyleProject;
}();
/**
 * @member {String} _class
 */


FreeStyleProject.prototype['_class'] = undefined;
/**
 * @member {String} name
 */

FreeStyleProject.prototype['name'] = undefined;
/**
 * @member {String} url
 */

FreeStyleProject.prototype['url'] = undefined;
/**
 * @member {String} color
 */

FreeStyleProject.prototype['color'] = undefined;
/**
 * @member {Array.<module:model/FreeStyleProjectactions>} actions
 */

FreeStyleProject.prototype['actions'] = undefined;
/**
 * @member {String} description
 */

FreeStyleProject.prototype['description'] = undefined;
/**
 * @member {String} displayName
 */

FreeStyleProject.prototype['displayName'] = undefined;
/**
 * @member {String} displayNameOrNull
 */

FreeStyleProject.prototype['displayNameOrNull'] = undefined;
/**
 * @member {String} fullDisplayName
 */

FreeStyleProject.prototype['fullDisplayName'] = undefined;
/**
 * @member {String} fullName
 */

FreeStyleProject.prototype['fullName'] = undefined;
/**
 * @member {Boolean} buildable
 */

FreeStyleProject.prototype['buildable'] = undefined;
/**
 * @member {Array.<module:model/FreeStyleBuild>} builds
 */

FreeStyleProject.prototype['builds'] = undefined;
/**
 * @member {module:model/FreeStyleBuild} firstBuild
 */

FreeStyleProject.prototype['firstBuild'] = undefined;
/**
 * @member {Array.<module:model/FreeStyleProjecthealthReport>} healthReport
 */

FreeStyleProject.prototype['healthReport'] = undefined;
/**
 * @member {Boolean} inQueue
 */

FreeStyleProject.prototype['inQueue'] = undefined;
/**
 * @member {Boolean} keepDependencies
 */

FreeStyleProject.prototype['keepDependencies'] = undefined;
/**
 * @member {module:model/FreeStyleBuild} lastBuild
 */

FreeStyleProject.prototype['lastBuild'] = undefined;
/**
 * @member {module:model/FreeStyleBuild} lastCompletedBuild
 */

FreeStyleProject.prototype['lastCompletedBuild'] = undefined;
/**
 * @member {String} lastFailedBuild
 */

FreeStyleProject.prototype['lastFailedBuild'] = undefined;
/**
 * @member {module:model/FreeStyleBuild} lastStableBuild
 */

FreeStyleProject.prototype['lastStableBuild'] = undefined;
/**
 * @member {module:model/FreeStyleBuild} lastSuccessfulBuild
 */

FreeStyleProject.prototype['lastSuccessfulBuild'] = undefined;
/**
 * @member {String} lastUnstableBuild
 */

FreeStyleProject.prototype['lastUnstableBuild'] = undefined;
/**
 * @member {String} lastUnsuccessfulBuild
 */

FreeStyleProject.prototype['lastUnsuccessfulBuild'] = undefined;
/**
 * @member {Number} nextBuildNumber
 */

FreeStyleProject.prototype['nextBuildNumber'] = undefined;
/**
 * @member {String} queueItem
 */

FreeStyleProject.prototype['queueItem'] = undefined;
/**
 * @member {Boolean} concurrentBuild
 */

FreeStyleProject.prototype['concurrentBuild'] = undefined;
/**
 * @member {module:model/NullSCM} scm
 */

FreeStyleProject.prototype['scm'] = undefined;
var _default = FreeStyleProject;
exports["default"] = _default;