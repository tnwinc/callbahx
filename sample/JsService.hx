package ;

@:build(callbahx.Macros.remotingClass())
@:expose
@:keep
class JsService {
    public function new () {}

    @remote //NOTE: the macro is a bit weak, so the 'stash has to be on the line after the function signature. Lame.
    public function getTheFoo(fooId:String, cb:String->Void):Void
    {
        trace("was called. " + fooId);
        cb('this is from JS. You passed me: ${fooId}');
        trace("after callback.");
    }
}

