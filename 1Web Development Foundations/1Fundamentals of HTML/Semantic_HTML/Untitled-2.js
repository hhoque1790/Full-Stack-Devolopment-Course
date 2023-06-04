let cb = (n1, n2) => {return n1 + n2};
 
let hof = (func) => {
  let value = cb(3, 5);
  return `this function returned ${value}`;
}
 
console.log(hof(cb)) // 'this function returned 8'