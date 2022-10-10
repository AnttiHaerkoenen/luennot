###################################################################################
# Commands                                                                        #
###################################################################################

## Ruotsin ajan erityiskysymyksiä
ruotsin_aika:
	pandoc -t revealjs -s ./ruotsin-ajan-erityiskysymyksia/ruotsin-ajan-erityiskysymyksia.md \
-o ./ruotsin-ajan-erityiskysymyksia/ruotsin-ajan-erityiskysymyksia.html -i --slide-level 2 -V lang=fi -V theme=white \
 --embed-resources --standalone
	pandoc -s ./ruotsin-ajan-erityiskysymyksia/ruotsin-ajan-erityiskysymyksia.md -o \
./ruotsin-ajan-erityiskysymyksia/ruotsin-ajan-erityiskysymyksia_print.html --embed-resources --standalone

## The curse of spatial scale
spatial_scale:
	pandoc -t revealjs -s ./nhm-2022/curse-of-spatial-scale.md -o ./nhm-2022/curse-of-spatial-scale.html -i \
--slide-level 2 -V lang=fi -V theme=white --embed-resources --standalone
	pandoc -s ./nhm-2022/curse-of-spatial-scale.md -o ./nhm-2022/curse-of-spatial-scale_print.html --embed-resources --standalone

embedding := <section id="g1" class="title-slide slide level2"><iframe scrolling="no" src=".\/img\/fig2.html" height="600" width="1200"><\/iframe><\/section>

## Puuttuvat ortodoksit
puuttuvat_ortodoksit:
	convert ./hitu-2022/img/plan1876.jpg -resize 20% ./hitu-2022/img/plan1876_resized.jpg
	convert ./hitu-2022/img/fig2.png -resize 70% ./hitu-2022/img/fig2_resized.png
	convert ./hitu-2022/img/plan1885.jpg -resize 27.5% ./hitu-2022/img/plan1885_resized.jpg
	pandoc -t revealjs -s ./hitu-2022/puuttuvat-ortodoksit.md -o ./hitu-2022/puuttuvat-ortodoksit.html -i\
 --slide-level 2 -V lang=fi --css ./theme/custom-white.css --embed-resources --standalone
	pandoc -s ./hitu-2022/puuttuvat-ortodoksit.md -o ./hitu-2022/puuttuvat-ortodoksit_print.html --embed-resources \
 --standalone
	sed 's/<img data-src=".\/img\/fig2_resized.png" \/>/$(embedding)/' ./hitu-2022/puuttuvat-ortodoksit.html -i

#################################################################################
# Self Documenting Commands                                                     #
#################################################################################

.DEFAULT_GOAL := help

# Inspired by <http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html>
# sed script explained:
# /^##/:
# 	* save line in hold space
# 	* purge line
# 	* Loop:
# 		* append newline + line to hold space
# 		* go to next line
# 		* if line starts with doc comment, strip comment character off and loop
# 	* remove target prerequisites
# 	* append hold space (+ newline) to line
# 	* replace newline plus comments by `---`
# 	* print line
# Separate expressions are necessary because labels cannot be delimited by
# semicolon; see <http://stackoverflow.com/a/11799865/1968>
.PHONY: help
help:
	@echo "$$(tput bold)Available rules:$$(tput sgr0)"
	@echo
	@sed -n -e "/^## / { \
		h; \
		s/.*//; \
		:doc" \
		-e "H; \
		n; \
		s/^## //; \
		t doc" \
		-e "s/:.*//; \
		G; \
		s/\\n## /---/; \
		s/\\n/ /g; \
		p; \
	}" ${MAKEFILE_LIST} \
	| LC_ALL='C' sort --ignore-case \
	| awk -F '---' \
		-v ncol=$$(tput cols) \
		-v indent=24 \
		-v col_on="$$(tput setaf 6)" \
		-v col_off="$$(tput sgr0)" \
	'{ \
		printf "%s%*s%s ", col_on, -indent, $$1, col_off; \
		n = split($$2, words, " "); \
		line_length = ncol - indent; \
		for (i = 1; i <= n; i++) { \
			line_length -= length(words[i]) + 1; \
			if (line_length <= 0) { \
				line_length = ncol - indent - length(words[i]) - 1; \
				printf "\n%*s ", -indent, " "; \
			} \
			printf "%s ", words[i]; \
		} \
		printf "\n"; \
	}' \
	| more $(shell test $(shell uname) = Darwin && echo '--no-init --raw-control-chars')
