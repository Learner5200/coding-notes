# JSP (JavaServer Pages)

* Think of JSP as kind of like ERB for Java.
* Can write HTML (or any other data in a text-based format) and embed java in it using **scriptlets** (THE SAME SCRIPTLETS AS IN ERB!):

```
<p>Counting to three:</p>
<% for (int i=1; i<4; i++) { %>
    <p>This number is <%= i %>.</p>
<% } %>
<p>OK.</p>
```

* Can access params set by previous view (e.g. a form) without passing them through the controller.
