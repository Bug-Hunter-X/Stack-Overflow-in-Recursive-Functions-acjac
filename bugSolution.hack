function foo(x: int): int {
  var result: int = 1;
  for (var i = 1; i <= x; i++) {
    result *= i;
  }
  return result;
}

function bar(x: int): int {
  var result: int = 0;
  for (var i = 1; i <= x; i++) {
    result += i;
  }
  return result;
}

function baz(x: int): int {
  return foo(x) + bar(x);
}

function main(): void {
  echo baz(5);
}
//This solution avoids the recursive calls and hence stack overflow by using iterative loops.