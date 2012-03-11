all: chosen/chosen.jquery.min.js

chosen/chosen.jquery.min.js: chosen/chosen.jquery.js
	yui-compressor -o chosen/chosen.jquery.min.js chosen/chosen.jquery.js
