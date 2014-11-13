package ;

class FlashMain {
    static function main() {
        var ctx = new haxe.remoting.Context();
        ctx.addObject("FlashMain", FlashMain);
        var conn = callbahx.ExternalAsyncConnection.jsConnect("callbahx", ctx);

        var jsProxy = callbahx.Macros.buildAndInstantiateRemoteProxyClass(JsService, conn);

        trace('calling remote method');
        jsProxy.getTheFoo("fooId", function (foo :String) :Void {
            trace('successfully got the foo: ${foo}');
            jsProxy.getTheFoo("from inside", function(f) {
                trace('and this returns too: ${f}');
            });
        });

        trace('calling remote method again');
        jsProxy.getTheFoo("Some other value", function (foo :String) :Void {
            trace('successfully got the foo again!! See: ${foo}');
        });
    }
}

