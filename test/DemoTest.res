open Test
open Demo

module Assert = {
  let equal = (lhs: 'a, rhs: 'a): unit =>
    assertion(
      ~message="values should be equal",
      ~operator="===",
      (lhs, rhs) => lhs === rhs,
      lhs,
      rhs,
    )
  let deepEqual = (lhs: 'a, rhs: 'a): unit =>
    assertion(
      ~message="values should be deep equal",
      ~operator="==",
      (lhs, rhs) => lhs == rhs,
      lhs,
      rhs,
    )
}

test("foo is foo", () => {
  Assert.equal(foo(), "foo")
})

test("deep equality of a person", () => {
  Assert.deepEqual(arthur, {age: 42, name: "Arthur"})
})
