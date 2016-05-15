units:
	@xctool -project ./ios-client/Mabataki.xcodeproj -scheme "Mabataki" -sdk iphonesimulator -destination "platform=iOS Simulator,OS=9.3,name=iPhone 6" test

bootstrap:
	cd ./ios-client/; carthage bootstrap --platform iOS

update:
	cd ./ios-client/; carthage update --platform iOS
