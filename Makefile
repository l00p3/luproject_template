.PHONY: cpp python

install:
	@python3 -m pip install --verbose python/

uninstall:
	@python3 -m pip uninstall mypybind

cpp:
	@cmake -Bbuild cpp/my_project/
	@cmake --build build -j$(nproc -all)

python:
	@cmake -Bbuild_python python/
	@cmake --build build_python -j$(nproc -all)

clean:
	@rm -rf build/
	@rm -rf build_python/
	@rm -rf python/build/
