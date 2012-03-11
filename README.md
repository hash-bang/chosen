# Chosen (with value search support)

Chosen is a library for making long, unwieldy select boxes more user friendly.

This is an almost identical fork of the main Chosen project located at http://harvesthq.github.com/chosen/

It exists only to fix a minor issue with multiple select boxes.

By default Chosen only searches the text of a select box.

For example:

```
<select data-placeholder="suburb or postcode..." class="chzn-select" multiple="multiple" style="width:350px;" tabindex="2">
	<option value=""></option> 
	<option value="4218">Broadbeach (4218)</option> 
	<option value="4217">Surfers Paradise (4217)</option> 
	<option value="4209">Upper Coomera (4209)</option> 
	<option value="4212">Sanctuary Cove (4212)</option> 
</select>
```

In the above example a simple postcode list is shown. It would be desirable to search EITHER by postcode (i.e. the VALUE of an option) AND the text of the option. This fork fixes this issue allowing either method to be used to select an item.

This project also includes a Makefile to simply minifying the JavaScript file.
