cuneiform-latin.far: cuneiform-latin.grm byte.far upcase.txt
	thraxcompiler --input_grammar=$< --output_far=$@

byte.far: byte.grm 
	thraxcompiler --input_grammar=$< --output_far=$@

byte.grm: /usr/local/share/thrax/grammars/byte.grm
	cp $< $@

clean:
	rm -f byte.far
