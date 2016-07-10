SHELL = /bin/bash

.PHONY: materials segments

collect:
	rm -f build/segments/*.ly;
	cd segments && for segment in section_*; do \
		sed '/^\\score/,/^\}/!d;/^\\score/d;/^\}/d' $$segment/illustration.ly > ../build/segments/$${segment/_/-}.ily; \
	done;

segments:
	make section_one
	make section_two
	make section_three

section_one:
	python ./segments/section_one/definition.py

section_two:
	python ./segments/section_two/definition.py

section_three:
	python ./segments/section_three/definition.py

