var bigo = [7, 6, 5, 4, 3, 2, 1];
var bigomega = [1, 2, 3, 4, 5, 6, 7];

function mergeSort(arr) {
  if(arr.length < 2) {
    return arr;
  }
  var middle = Math.floor(arr.length/2);
  var left = arr.slice(0, middle);
  var right = arr.slice(middle, arr.length);
  return merge(mergeSort(left), mergeSort(right));
}

function merge(left, right) {
  var output = [];

  while(left.length && right.length) {
    if(left[0] <= right[0]) {
      output.push(left.shift());
    } else {
      output.push(right.shift());
    }
  }

  while(left.length) {
    output.push(left.shift());
  }

  while(right.length) {
    output.push(right.shift());
  }

  return output;
}

console.log(mergeSort(bigo));
console.log(mergeSort(bigomega));
