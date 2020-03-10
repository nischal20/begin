/********************************************************************************************

Add a method in the class getKeyFields, which takes an array of JSON objects (eg [{channel: ‘A’}, {channel: ‘B’}, {channel ‘C’}])as input and returns an array of values of _keyField, input array.


********************************************************************************************/
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


  getKeyFields(MetadataParserList, channelJson) {
    var result = [];
    result = MetadataParserList.filter((el) => {
      return channelJson.some((f) => {
        return f._channel === el._channel
      });
    });
    result=result.map(({_version,_channel, ...rest}) => ({...rest}))
    return result;
  }
}
var MetadataParser1 = new DataParser("Version1", "channel1", "keyfield1");
var MetadataParser2 = new DataParser("Version2", "channel2", "keyfield2");
var MetadataParser3 = new DataParser("Version3", "channel3", "keyfield3");
var MetadataParserList = [];
MetadataParserList.push(MetadataParser1);
MetadataParserList.push(MetadataParser2);
MetadataParserList.push(MetadataParser3);

channelJson = [{
    _channel: "channel1"
  },
  {
    _channel: "channel2"
  }
];


var newData = new DataParser("v1", "c1", "k1");

var keyFieldData = newData.getKeyFields(MetadataParserList, channelJson);
keyFieldData.forEach(function (a) {
  console.log(a._keyField)
 });