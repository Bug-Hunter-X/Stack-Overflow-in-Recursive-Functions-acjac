function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x == 0) {
    return 0;
  } else {
    return x + bar(x - 1);
  }
}

function baz(x: int): int {
  return foo(x) + bar(x);
}

function main(): void {
  echo baz(5);
}

// This program will cause a stack overflow error if the input is too large.
// Hack does not do tail-call optimization, so the recursive calls will consume too much stack space.