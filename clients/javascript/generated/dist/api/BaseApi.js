"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _DefaultCrumbIssuer = _interopRequireDefault(require("../model/DefaultCrumbIssuer"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
* Base service.
* @module api/BaseApi
* @version 1.1.2-pre.0
*/
var BaseApi = /*#__PURE__*/function () {
  /**
  * Constructs a new BaseApi. 
  * @alias module:api/BaseApi
  * @class
  * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
  * default to {@link module:ApiClient#instance} if unspecified.
  */
  function BaseApi(apiClient) {
    _classCallCheck(this, BaseApi);

    this.apiClient = apiClient || _ApiClient["default"].instance;
  }
  /**
   * Callback function to receive the result of the getCrumb operation.
   * @callback module:api/BaseApi~getCrumbCallback
   * @param {String} error Error message, if any.
   * @param {module:model/DefaultCrumbIssuer} data The data returned by the service call.
   * @param {String} response The complete HTTP response.
   */

  /**
   * Retrieve CSRF protection token
   * @param {module:api/BaseApi~getCrumbCallback} callback The callback function, accepting three arguments: error, data, response
   * data is of type: {@link module:model/DefaultCrumbIssuer}
   */


  _createClass(BaseApi, [{
    key: "getCrumb",
    value: function getCrumb(callback) {
      var postBody = null;
      var pathParams = {};
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _DefaultCrumbIssuer["default"];
      return this.apiClient.callApi('/crumbIssuer/api/json', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
  }]);

  return BaseApi;
}();

exports["default"] = BaseApi;