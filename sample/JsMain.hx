package ;

class JsMain {
    static var conn;
    static var ctx;
    static function main() {
        untyped __js__('console.clear()');
        ctx = new haxe.remoting.Context();
        ctx.addObject(JsService.REMOTING_ID, new JsService());
        conn = callbahx.ExternalAsyncConnection.flashConnect("callbahx", "sampleFlashObject", ctx);
    }
}
