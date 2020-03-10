/********************************************************************************************
Define a constructor function SortArray which 
Has a property originalArray
Has get function to getSortedArray 
Has a private function to sort the array.

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

}
var MetadataParser = new SortArray([43, 8, 76, 90, 1000]);
MetadataParser.getSortedArray.forEach(function (a) {
  console.log(a)
});