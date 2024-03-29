const samples = require('../samples/BaseApi');
const DefaultCrumbIssuer = require('../models/DefaultCrumbIssuer');
const utils = require('../utils/utils');

module.exports = {
    getCrumb: {
        key: 'getCrumb',
        noun: 'base',
        display: {
            label: '',
            description: 'Retrieve CSRF protection token',
            hidden: false,
        },
        operation: {
            inputFields: [
            ],
            outputFields: [
                ...DefaultCrumbIssuer.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('http://localhost/crumbIssuer/api/json'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Authorization': 'Bearer {{bundle.authData.access_token}}',
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(options).then((response) => {
                    response.throwForStatus();
                    const results = response.json;
                    return results;
                })
            },
            sample: samples['DefaultCrumbIssuerSample']
        }
    },
}
