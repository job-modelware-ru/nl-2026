# main.nim — единая точка входа для первой презентации.
# Последовательно запускает примеры p01..p10.
import p01_types
import p02_operations
import p03_typecast
import p04_scope
import p05_ownership
import p06_functions
import p07_recursion
import p08_closures
import p09_control_flow
import p10_iterators

proc main() =
  p01_types.run();        echo ""
  p02_operations.run();   echo ""
  p03_typecast.run();     echo ""
  p04_scope.run();        echo ""
  p05_ownership.run();    echo ""
  p06_functions.run();    echo ""
  p07_recursion.run();    echo ""
  p08_closures.run();     echo ""
  p09_control_flow.run(); echo ""
  p10_iterators.run()

when isMainModule:
  main()