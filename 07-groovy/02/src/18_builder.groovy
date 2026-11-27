// Слайд 19. Билдеры и DSL
// Ожидаемый вывод:
//   <html>
//     <body>
//       <p>Hello</p>
//     </body>
//   </html>

import groovy.xml.MarkupBuilder

def sw = new StringWriter()
def mb = new MarkupBuilder(sw)

mb.html { body { p("Hello") } }
println sw
