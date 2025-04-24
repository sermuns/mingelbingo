#import "@preview/suiji:0.3.0": *

#set page(margin: 1.5cm)
#let questions(inp) = {
  let all = ()
  for question in yaml(inp) {
    all.push(question)
  }
  return all
}

#let rng = gen-rng(25)
#let shuffled = questions("questions.yml")

#for i in range(1, 5) {

  (rng, shuffled) = shuffle(rng, shuffled)

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
    ..shuffled
  )
}
