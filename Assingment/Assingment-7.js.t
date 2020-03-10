/**************************************************************************************************
Define another constructor function (SortObjectArray) which extends SortArray, and is used to sort 

*********************************************************************************************/
class SortArray {
  constructor(a) {
    this.originalArray = a;
  }
  get getSortedArray() {
    return this.sortArray();
  }
  sortArray() {
    return this.originalArray.sort(function (a, b) {
      return a - b
    });
  }

  jsonData;


  SortObjectArray(jsonData1) {
    this.jsonData = jsonData1.sort(function (a, b) {
      var nameA = a.channel.toLowerCase();
      var nameB = b.channel.toLowerCase();
      if (nameA < nameB)
        return -1
      if (nameA > nameB)
        return 1
      return 0
    });
  }
}
MetadataParser = new SortArray([43, 8, 76, 90, 1000]);

MetadataParser.SortObjectArray([{
    "channel": "A",
    "name": "shoe"
  },
  {
    "channel": "B",
    "name": "apparel"
  },
  {
    "channel": "C",
    "name": "electronics"
  },
  {
    "channel": "A",
    "name": "electronics"
  }
]);

MetadataParser.jsonData.forEach(function (a) {
  console.log(a)
});