open Test
open Boilerplate

test("foo is foo", () => {
  Assert.equal(foo(), "foo")
})

test("deep equality of a person", () => {
  Assert.deepEqual(arthur, {age: 42, name: "Arthur"})
})

test("4 is less than 5", () => {
  Assert.lessThan(4, 5)
})
