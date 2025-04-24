#set page(margin: 1.5cm)
#let questions(inp) = {
  let all = ()
  for question in yaml(inp) {
    all.push(question)
  }
  return all
}


#for i in (1, 2, 3, 4) {
  [
    #set align(center)
    #set text(2em)
    = Mingelbingo

    _Hitta någon som ..._
  ]
  grid(
    stroke: 1pt,
    inset: 1em,
    align: center + horizon,
    columns: (1fr,) * 6,
    rows: 10em,
    ..questions("./variation_" + str(i) + ".yaml")
  )
}
