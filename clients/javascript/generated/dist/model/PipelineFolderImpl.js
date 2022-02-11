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
 * The PipelineFolderImpl model module.
 * @module model/PipelineFolderImpl
 * @version 1.1.2-pre.0
 */
var PipelineFolderImpl = /*#__PURE__*/function () {
  /**
   * Constructs a new <code>PipelineFolderImpl</code>.
   * @alias module:model/PipelineFolderImpl
   */
  function PipelineFolderImpl() {
    _classCallCheck(this, PipelineFolderImpl);

    PipelineFolderImpl.initialize(this);
  }
  /**
   * Initializes the fields of this object.
   * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
   * Only for internal use.
   */


  _createClass(PipelineFolderImpl, null, [{
    key: "initialize",
    value: function initialize(obj) {}
    /**
     * Constructs a <code>PipelineFolderImpl</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PipelineFolderImpl} obj Optional instance to populate.
     * @return {module:model/PipelineFolderImpl} The populated <code>PipelineFolderImpl</code> instance.
     */

  }, {
    key: "constructFromObject",
    value: function constructFromObject(data, obj) {
      if (data) {
        obj = obj || new PipelineFolderImpl();

        if (data.hasOwnProperty('_class')) {
          obj['_class'] = _ApiClient["default"].convertToType(data['_class'], 'String');
        }

        if (data.hasOwnProperty('displayName')) {
          obj['displayName'] = _ApiClient["default"].convertToType(data['displayName'], 'String');
        }

        if (data.hasOwnProperty('fullName')) {
          obj['fullName'] = _ApiClient["default"].convertToType(data['fullName'], 'String');
        }

        if (data.hasOwnProperty('name')) {
          obj['name'] = _ApiClient["default"].convertToType(data['name'], 'String');
        }

        if (data.hasOwnProperty('organization')) {
          obj['organization'] = _ApiClient["default"].convertToType(data['organization'], 'String');
        }

        if (data.hasOwnProperty('numberOfFolders')) {
          obj['numberOfFolders'] = _ApiClient["default"].convertToType(data['numberOfFolders'], 'Number');
        }

        if (data.hasOwnProperty('numberOfPipelines')) {
          obj['numberOfPipelines'] = _ApiClient["default"].convertToType(data['numberOfPipelines'], 'Number');
        }
      }

      return obj;
    }
  }]);

  return PipelineFolderImpl;
}();
/**
 * @member {String} _class
 */


PipelineFolderImpl.prototype['_class'] = undefined;
/**
 * @member {String} displayName
 */

PipelineFolderImpl.prototype['displayName'] = undefined;
/**
 * @member {String} fullName
 */

PipelineFolderImpl.prototype['fullName'] = undefined;
/**
 * @member {String} name
 */

PipelineFolderImpl.prototype['name'] = undefined;
/**
 * @member {String} organization
 */

PipelineFolderImpl.prototype['organization'] = undefined;
/**
 * @member {Number} numberOfFolders
 */

PipelineFolderImpl.prototype['numberOfFolders'] = undefined;
/**
 * @member {Number} numberOfPipelines
 */

PipelineFolderImpl.prototype['numberOfPipelines'] = undefined;
var _default = PipelineFolderImpl;
exports["default"] = _default;