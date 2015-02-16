var bigo = [7, 6, 5, 4, 3, 2, 1];
var bigomega = [1, 2, 3, 4, 5, 6, 7];

function swap(arr, indexOne, indexTwo) {
  var temp = arr[indexOne];
  arr[indexOne] = arr[indexTwo];
  arr[indexTwo] = temp;
}

function bubbleSort(arr) {
  for(var i = 0; i < arr.length - 1; i++) {
    for(var j = 0; j < arr.length - 1 - i; j++) {
      if(arr[j] > arr[j+1]) {
        swap(arr, j, j+1)
      }
    }
  }
  return arr;
}

function betterBubble(arr) {
  var count = 0;
  var swapping;

  do {
    swapping = false;
    for(var i = 0; i < arr.length - 1 - count; i++) {
      if(arr[i] > arr[i+1]) {
        swap(arr, i , i+1);
        swapping = true;
      }
    }
    count ++
  } while (swapping === true)

  return arr;
}

console.log(bubbleSort(bigo));
console.log(betterBubble(bigo));
