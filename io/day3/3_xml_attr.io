OperatorTable addAssignOperator(":", "atPutAttr")

Map atPutAttr := method(
  call target atPut(call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""), call evalArgAt(1))
)

curlyBrackets := method(
  m := Map clone
  call message arguments foreach(arg,
    # original doMessage takes Message object as argument, which would be evaluated as a linked list
    # thus will cause Exception: Sequence does not respond to `:`
    # I think the problem is due to the fact that doMessage would interpret the Message linked list by
    # its order, "a" sequence then `:` as message arugment instead of operator then "b" sequence for example,
    # therefore ignore the new operator
    m doString(arg asString)
  )
  m
)

Builder := Object clone

Builder indent := 0

Builder buildAttr := method(attrMap,
  attrMap foreach(k, v, 
    write(" ", k, "=\"", v, "\"")
  )
)

Builder forward := method(
  for(i, 0, indent, write(" "))
  write("<", call message name)
  (call message arguments at(0) name == "curlyBrackets") ifTrue(self buildAttr(call evalArgAt(0)))
  write(">\n")
  self indent = self indent + 1
  call message arguments foreach(
    arg,
    content := self doMessage(arg);
    if(content type == "Sequence", for(i, 0, indent, write(" ")); writeln(content)))
  self indent = self indent - 1
  for(i, 0, indent, write(" "))
  writeln("</", call message name, ">")
)

Builder ul({"style": "display: none;", "border": "10"}, li({"name": "iolang"}, "Io"), li("Lua"), li("JavaScript"))

# Result
# <ul style="display: none;" border="10">
#  <li name="iolang">
#   Io
#  </li>
#  <li>
#   Lua
#  </li>
#  <li>
#   JavaScript
#  </li>
# </ul>