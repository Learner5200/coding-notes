
## Event handlers

* Important to know when a key has been pressed, mouse clicked, etc. - without constantly checking.
* Browsers let us register functions as *handlers* for specific events.
* Event listeners can listen for an event to occur in a given context and execute a function if it does.
* e.g:

```
<p>Click this document to activate the handler.</p>
<script>
  window.addEventListener("click", () => {
    console.log("You knocked?");
  });
</script>
```

* Event handler functions are passed an _event object_ which holds additional information about the events
* Typically there is a default action associated with an event (e.g. a click taking you to the appropriate link), which can be prevented.
* Parent nodes will also receive events that happen in their children. But the more specific event handlers get to go first, and propagate outwards

## Some types of event

* key press (keydown and keyup)
* click (mousedown, mouseup and click)
* mouse motion (mousemove)
* touch events (touch start, move and end)
* scroll events (scroll)
* focus events (docus, blur)
* load events (often used to schedule initialization actions)
