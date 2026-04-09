Modal dialog keyboard events
============================

Apps still act upon keyboard events while the info modal dialogs are open.

```
2026-04-09		🖮🛈		New task
```

This is a relatively minor issue, but it needs addressing and it's across the apps.
I think I probably need to suppress *most* keyboard actions while modal dialogs are open.

At the moment for example:
* Turtle will still respond to things like 'do'
* Screensaver will pause/unpause
* Yearclock day forward/backward still work


### Keyboard 'this' binding

In addition I've had to do this for screensaver:
```js
	keyFunctionMap = {
		'?'	: this.showAppInfoDialog.bind(this),	// nb this might need attention
		' ' : this.playPauseHandler,
	};
```
I'm sure I've addressed 'this' binding for keyboard events before, but can't any notes right now.
Without the `bind(this)` the handling function receives the keyFunctionMap as 'this'.
A better soln here is required.

Also at the moment each app has it's own copy of the keyboardHandler somewhere:
```js
	keyboardHandler(event) {
		if (!event.altKey && !event.ctrlKey && !event.metaKey) {

			if (this.keyFunctionMap[event.key]) {
				event.preventDefault();
				this.keyFunctionMap[event.key]();
			}
		}
	}/* keyboardHandler */
```
It would be nice to work out a way to centralise this stuff in html-common.


Ideas
-----

I'd like for different components/modules to be able to register their own keydown listeners, so having a static method on HTMLApp is probably the line to take, similar to what i've done for addEventListeners and buildElementMap

But think it will have to work differently for this as I need a local copy of the method each place i need it.
So maybe need a static function generator??
Not sure yet.
I've started a branch in html-common to try things.

