.PHONY: cpp

install:
	@echo TODO

uninstall:
	@echo TODO

editable:
	@echo TODO

test:
	@echo TODO

cpp:
	@cmake -Bbuild cpp/my_project
	@cmake --build build -j$(nproc --all)

clean:
	@rm -rf build/
