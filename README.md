Chosen (with value search support)
==================================
This is an almost identical fork of the main Chosen project located at http://harvesthq.github.com/chosen/

It exists only to fix a few minor issues with multiple select boxes.


FIX: Fuzzy searching
--------------------
Unlike the main Chosen project this fork allows the user entered text to be returned on the form. Fuzzy searches are prefixed with 'q'.

For example:

	<select name="places" class="chzn-select" multiple="multiple">
		<option value=""></option> 
		<option value="4218">Broadbeach (4218)</option> 
		<option value="4217">Surfers Paradise (4217)</option> 
		<option value="4209">Upper Coomera (4209)</option> 
		<option value="4212">Sanctuary Cove (4212)</option> 
	</select>

Typing 'Broad' will probably match 'Broadbeach' but typing 'Cove' will not match 'Santuary Cove'. In this case the POSTed values will be places=Broadbeach&qplaces=Cove.


FIX: Value searching
--------------------
By default Chosen only searches the text of a select box.

For example:

	<select data-placeholder="suburb or postcode..." class="chzn-select" multiple="multiple">
		<option value=""></option> 
		<option value="4218">Broadbeach (4218)</option> 
		<option value="4217">Surfers Paradise (4217)</option> 
		<option value="4209">Upper Coomera (4209)</option> 
		<option value="4212">Sanctuary Cove (4212)</option> 
	</select>

In the above example a simple postcode list is shown. It would be desirable to search EITHER by postcode (i.e. the VALUE of an option) AND the text of the option. This fork fixes this issue allowing either method to be used to select an item.

This project also includes a Makefile to simply minifying the JavaScript file.


FIX: Intertext bracket searching
--------------------------------
Similar to the above, This fork of Chosen will also allow searching for items in brackets.

For example:

	<select data-placeholder="suburb or postcode..." class="chzn-select">
		<option value="1"></option> 
		<option value="2">Broadbeach (4218)</option> 
		<option value="3">Surfers Paradise (4217)</option> 
		<option value="4">Upper Coomera (4209)</option> 
		<option value="5">Sanctuary Cove (4212)</option> 
	</select>

Typing for '421' will hilight Broadbeach, Surfers Paradise and Sanctuary Cove.
