
import cpp

from MacroInvocation mc
where
    mc.getMacroName().regexpMatch("ntoh(.*)")
select mc.getExpr(), "expression with call to a ntoh* macro"
