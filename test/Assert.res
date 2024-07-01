let equal = (lhs: 'a, rhs: 'a): unit =>
  Test.assertion(
    ~message="values should be equal",
    ~operator="===",
    (lhs, rhs) => lhs === rhs,
    lhs,
    rhs,
  )

let deepEqual = (lhs: 'a, rhs: 'a): unit =>
  Test.assertion(
    ~message="values should be deep equal",
    ~operator="==",
    (lhs, rhs) => lhs == rhs,
    lhs,
    rhs,
  )

let lessThan = (lhs: 'a, rhs: 'a): unit =>
  Test.assertion(
    ~message=`${lhs->String.make} is not less than ${rhs->String.make}`,
    ~operator="<",
    (lhs, rhs) => lhs < rhs,
    lhs,
    rhs,
  )
