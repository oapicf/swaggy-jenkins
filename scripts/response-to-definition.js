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
    if (typeof value === 'string' || value === null) {
      definition.properties[key] = {
        type: 'string'
      };
    } else if (typeof value === 'number') {
      definition.properties[key] = {
        type: 'integer'
      };
    } else if (Array.isArray(value)) {
      if (value.length > 0) {
        if (value[0]._class) {
          var propertyDefinitionId = getDefinitionIdFromClass(value[0]._class);
          definition.properties[key] = {
            type: 'array',
            items: {
              '$ref': util.format('#/definitions/%s', propertyDefinitionId)
            }
          };
          processObject(value[0], definitions);
        } else {
          console.warn('Ignoring property %s - an array with classless first item', key);
        }
      } else {
        console.warn('Ignoring property %s - an empty array', key);
      }
    } else if (typeof value === 'object') {
      if (Object.keys(value).length > 0) {
        if (value._class === undefined) {
          console.warn('Property %s does not have any _class', key);
          value._class = util.format('%s_%s', definitionId, key);
        }
        var propertyDefinitionId = getDefinitionIdFromClass(value._class);
        definition.properties[key] = {
          '$ref': util.format('#/definitions/%s', propertyDefinitionId)
        };
        processObject(value, definitions);
      } else {
        console.warn('Ignoring property %s - a keyless object', key);
      }
    } else {
      console.warn('Unsupported property type %s', typeof value);
    }
  });

  definitions[definitionId] = definition;
}

function report(outFile, definitions) {
  yaml.writeSync(outFile, definitions);
  console.log('Definitions:\n%s', yaml.dump(definitions));
}

function main(responseFile, definitions) {
  console.log('Reading response file: %s', responseFile);

  var response = JSON.parse(fs.readFileSync(responseFile, 'utf8'));
  processObject(response, definitions);
}

var responseFile = process.argv[2];
var outFile      = util.format('%s/%s.yml', process.cwd(), responseFile);
var definitions  = {};
main(responseFile, definitions);
report(outFile, definitions);
