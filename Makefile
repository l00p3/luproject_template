.PHONY: cpp python

project-name = my_project_template

install:
	@python3 -m pip install --verbose python/

uninstall:
	@python3 -m pip uninstall $(project-name)

cpp:
	@cmake -Bbuild cpp/$(project-name)/
	@cmake --build build -j$(nproc -all)

python:
	@cmake -Bbuild_python python/
	@cmake --build build_python -j$(nproc -all)

clean:
	@rm -rf build/
	@rm -rf build_python/
	@rm -rf python/build/

project:
	@mv cpp/my_project/ cpp/$(project-name)
	@mv python/my_project/ python/$(project-name)
