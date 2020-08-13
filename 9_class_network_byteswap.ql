import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap() {
        exists(MacroInvocation mc |
            mc.getMacroName().regexpMatch("ntoh(.*)") |
            mc.getExpr() = this
        )
    }
}

from NetworkByteSwap n
select n, "Network byte swap"
