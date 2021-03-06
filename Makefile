.PHONY: lib clean compass

download = curl --location -f --output $(1) --time-cond $(1) --remote-time $(2)

lib:
	$(call download, "assets/handlebars-1.0.0.js", \
		"https://raw.github.com/wycats/handlebars.js/1.0.0/dist/handlebars.js")
	$(call download, "assets/bootstrap.min.css", \
		"https://raw.github.com/twbs/bootstrap/master/dist/css/bootstrap.min.css")

compass:
	compass compile

clean:
	rm -rf .sass-cache || true

build: lib compass