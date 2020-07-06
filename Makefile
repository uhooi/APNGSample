PRODUCT_NAME := APNGSample
SCHEME_NAME := ${PRODUCT_NAME}

.DEFAULT_GOAL := help

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?# .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":[^#]*? #| #"}; {printf "%-42s%s\n", $$1 $$3, $$2}'

.PHONY: setup
setup: # Install dependencies and prepared development configuration
	$(MAKE) install-mint
	$(MAKE) install-carthage

.PHONY: install-mint
install-mint: # Install Mint dependencies
	mint bootstrap

.PHONY: install-carthage
install-carthage: # Install Carthage dependencies
	mint run carthage carthage bootstrap --platform iOS --cache-builds
	$(MAKE) show-carthage-dependencies

.PHONY: update-carthage
update-carthage: # Update Carthage dependencies
	mint run carthage carthage update --platform iOS
	$(MAKE) show-carthage-dependencies

.PHONY: show-carthage-dependencies
show-carthage-dependencies:
	@echo '*** Resolved dependencies:'
	@cat 'Cartfile.resolved'

.PHONY: generate-xcodeproj
generate-xcodeproj: # Generate project with XcodeGen
	mint run xcodegen xcodegen generate
	$(MAKE) open

.PHONY: open
open: # Open Project in Xcode
	open ./${PRODUCT_NAME}.xcodeproj
