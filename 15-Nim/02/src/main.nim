# main.nim — единая точка входа для второй презентации.
import p01_exceptions
import p02_assert
import p03_io
import p05_modules_usage
import p06_generics
import p07_collections
import p08_collections_advanced

proc main() =
  p01_exceptions.run();        echo ""
  p02_assert.run();            echo ""
  p03_io.run();                echo ""
  p05_modules_usage.run();     echo ""
  p06_generics.run();          echo ""
  p07_collections.run();       echo ""
  p08_collections_advanced.run()

when isMainModule:
  main()