
/***************************************************************************************
Write a function groupObjectsBy which takes as an input an array of JSON objects and returns a grouped object by a key. Eg
groupObjectsBy([
  {
    "channel": "A",
    "name": "shoe"
  },
  {
    "channel": "A",
    "name": "electronics"
  },
  {
    "channel": "B",
    "name": "apparel"
  },
  {
    "channel": "C",
    "name": "electronics"
  }
], ‘channel’)
Will return
{
  "A": [
    {
      "channel": "A",
      "name": "shoe"
    },
    {
      "channel": "A",
      "name": "electronics"
    }
  ],
  "B": [
    {
      "channel": "B",
      "name": "apparel"
    }
  ],
  "C": [
    {
      "channel": "C",
      "name": "electronics"
    }
  ]
}
*********************************************************************************************/
function groupBy(array, group) {
  var hash = Object.create(null),
    result = [];

  array.forEach(function (a) {
    if (!hash[a[group]]) {
      hash[a[group]] = [];
      result.push(hash[a[group]]);
    }
    hash[a[group]].push(a);
  });
  return result;
}
var a = [{
    "channel": "A",
    "name": "shoe"
  },
  {
    "channel": "A",
    "name": "electronics"
  },
  {
    "channel": "B",
    "name": "apparel"
  },
  {
    "channel": "C",
    "name": "electronics"
  }
];

console.log(groupBy(a, "channel"))

