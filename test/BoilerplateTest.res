open Zora
open Boilerplate

zora("Boilerplate tests", async t => {
  t->test("foo is foo", async t => {
    t->is(foo(), "foo")
  })

  t->test("deep equality of a person", async t => {
    t->equal(arthur, {age: 42, name: "Arthur"})
  })

  t->test("4 is less than 5", async t => {
    t->ok(4 < 5)
  })
})
