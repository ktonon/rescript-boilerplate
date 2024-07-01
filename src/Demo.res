Console.log("Hello, worldz!")

let x: float = 3.

let y = 4.2

let z = (x, y) => x +. y

Console.log(`hello: ${z(y, x)->Belt.Float.toString} and ${3->Belt.Int.toString}`)

let cat = (rest, a) => list{a, ...rest}

let v =
  list{}
  ->cat(1)
  ->cat(2)

let foo = (a, b) => `foo${a}${b}`

Console.log("d"->foo("a"))
