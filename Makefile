.PHONY: build-linux build-windows build-alpine push-linux push-windows push-alpine

build-linux:
	docker build -f Dockerfile.linux -t johncarterodg/pyinstaller-linux:python-$(PYTHON_VERSION)_pyinstaller-$(PYINSTALLER_VERSION) \
		--build-arg PYINSTALLER_VERSION=$(PYINSTALLER_VERSION) \
		--build-arg PYTHON_VERSION=$(PYTHON_VERSION) \.

build-windows:
	docker build -f Dockerfile.windows -t johncarterodg/pyinstaller-windows:python-$(PYTHON_VERSION)_pyinstaller-$(PYINSTALLER_VERSION) \
		--build-arg PYINSTALLER_VERSION=$(PYINSTALLER_VERSION) \
		--build-arg PYTHON_VERSION=$(PYTHON_VERSION) \.

build-alpine:
	docker build -f Dockerfile.alpine -t johncarterodg/pyinstaller-alpine:python-$(PYTHON_VERSION)-pyinstaller-$(PYINSTALLER_VERSION) \
		--build-arg PYINSTALLER_VERSION=$(PYINSTALLER_VERSION) \
		--build-arg PYTHON_VERSION=$(PYTHON_VERSION) \

push-linux:
	docker push johncarterodg/pyinstaller-linux:python-$(PYTHON_VERSION)-pyinstaller-$(PYINSTALLER_VERSION)

push-windows:
	docker push johncarterodg/pyinstaller-windows:python-$(PYTHON_VERSION)-pyinstaller-$(PYINSTALLER_VERSION)

push-alpine:
	docker push johncarterodg/pyinstaller-alpine:python-$(PYTHON_VERSION)-pyinstaller-$(PYINSTALLER_VERSION)