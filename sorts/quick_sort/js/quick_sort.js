var list = [4, 3, 2, 5, 6, 1, 7];

function quickSort(arr) {
  if (arr.length < 2) {
    return arr;
  }

  var pivot = arr[0];
  var left = [];
  var right = [];

  for(var i = 1; i < arr.length; i++) {
    if(arr[i] < pivot) {
      left.push(arr[i]);
    } else {
      right.push(arr[i]);
    }
  }

  return quickSort(left).concat([pivot]).concat(quickSort(right));
}

console.log(quickSort(list));
