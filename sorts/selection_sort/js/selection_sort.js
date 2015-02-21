var bigo = [7, 6, 5, 4, 3, 2, 1];
var bigomega = [1, 2, 3, 4, 5, 6, 7];

function swap(arr, indexOne, indexTwo) {
  var temp = arr[indexOne];
  arr[indexOne] = arr[indexTwo];
  arr[indexTwo] = temp;
}

function selectionSort(arr) {
  for(var i = 0; i < arr.length; i++) {
    var minIndex = i;
    for(var j = i; j < arr.length; j++) {
      if(arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }
    if(minIndex !== i) {
      swap(arr, i, minIndex);
    }
  }
  return arr;
}

console.log(selectionSort(bigo));
console.log(selectionSort(bigomega));
