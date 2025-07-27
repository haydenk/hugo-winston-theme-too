.PHONY: clean hugo serve

source=exampleSite
themeDir=../..

clean:
	-rm -rv $(source)/public
	-rm -rv $(source)/.hugo_build.lock
	-rm -rv $(source)/hugo_stats.json

serve:
	hugo server -D --watch --source $(source) --themesDir $(themeDir)

build:
	hugo --gc --minify -s $(source) --themesDir $(themeDir) --baseURL $(baseUrl)

dev: clean serve

slug := $(shell echo $(title) | tr '[:upper:]' '[:lower:]' | sed 's/ /_/g')

post:
	hugo new content --kind default "posts/$(shell date +%s)_$(slug).md" --source $(source) --themesDir $(themeDir)
