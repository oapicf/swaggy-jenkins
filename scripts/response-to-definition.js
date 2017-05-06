// converts Jenkins JSON response to OpenAPI spec definition YAML

const fs   = require('fs');
const util = require('util');
const yaml = require('node-yaml');

function getDefinitionIdFromClass(clazz) {
  var definitionIdElems = clazz.split('.');
  return definitionIdElems[definitionIdElems.length - 1];
}

function processObject(obj, definitions) {

  var definitionId = getDefinitionIdFromClass(obj._class);
  console.log('Constructing definition: %s', definitionId);

  var definition = {
    type: 'object',
    properties: {}
  };

  Object.keys(obj).forEach(function (key) {
    value = obj[key];
    if (typeof value === 'string') {
      definition.properties[key] = {
        type: 'string'
      };
    } else if (typeof value === 'number') {
      definition.properties[key] = {
        type: 'integer'
      };
    } else if (Array.isArray(value) && value.length > 0) {
      var itemDefinitionId = getDefinitionIdFromClass(value[0]._class);
      definition.properties[key] = {
        type: 'array',
        items: {
          '$ref': util.format('#/definitions/%s', itemDefinitionId)
        }
      };
      processObject(value[0], definitions);
    }
  });

  definitions[definitionId] = definition;
}

function main(responseFile, definitions) {
  console.log('Reading response file: %s', responseFile);

  var response = JSON.parse(fs.readFileSync(responseFile, 'utf8'));
  processObject(response, definitions);
}

var responseFile = process.argv[2];
var definitions  = {};
main(responseFile, definitions);
console.log('Definitions:\n%s', yaml.dump(definitions));
