var bigo = [7, 6, 5, 4, 3, 2, 1];
var bigomega = [1, 2, 3, 4, 5, 6, 7];

function insertionSort(arr) {
  for(var i = 1; i < arr.length; i++) {
    var temp = arr[i];
    var counter = i;

    while(counter > 0 && arr[counter-1] > temp) {
      arr[counter] = arr[counter - 1];
      counter--;
    }

    arr[counter] = temp;
  }
  return arr;
}

console.log(insertionSort(bigo));
console.log(insertionSort(bigomega));
