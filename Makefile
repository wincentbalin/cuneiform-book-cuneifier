cuneiform-latin.far: cuneiform-latin.grm byte.far upcase.txt
	thraxcompiler --input_grammar=$< --output_far=$@

byte.far: byte.grm 
	thraxcompiler --input_grammar=$< --output_far=$@

byte.grm: /usr/local/share/thrax/grammars/byte.grm
	cp $< $@

diagram: cuneiform-latin.far
	farextract $<
	fstdraw Cuneifier > Cuneifier.dot
	dot -Gdpi=600 -Grankdir=LR -o Cuneifier.png -Tpng Cuneifier.dot
	rm Cuneifier.dot Cuneifier

test: cuneiform-latin.far
	thraxrewrite-tester --far=$< --rules=Cuneifier

clean:
	rm -f byte.far
