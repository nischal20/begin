/***********************************************************************************
Create an Object MetadataParser using constructor functions
The Object should have private properties _version, _channel, _keyField 
Object should have get and set function for each properties


**********************************************************************************/

class DataParser {
  constructor(version, channel, keyField) {
    this._version = version;
    this._channel = channel;
    this._keyField = keyField;
  }
  get getVersion() {
    return this._version;
  }
  get getChannel() {
    return this._channel;
  }
  get getKeyField() {
    return this._keyField;
  }
  set setVersion(x) {
    this._version = x;
  }
  set setChannel(x) {
    this._channel = x;
  }
  set setKeyField(x) {
    this._keyField = x;
  }
}
var MetadataParser = new DataParser("Version1", "channel1", "keyfield1");
MetadataParser.setVersion = "v2";
MetadataParser.setKeyField = "k2";

console.log(MetadataParser._channel)
