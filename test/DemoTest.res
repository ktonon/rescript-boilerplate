open Test
open Demo

let stringEqual = (a: string, b: string) =>
  assertion(~message="values should be equal", ~operator="==", (a, b) => a == b, a, b)

test("foo is foo", () => {
  stringEqual(foo(), "foo")
})
