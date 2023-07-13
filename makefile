envied:
	@fvm flutter pub run build_runner build 

update:
	@git add .
	@git commit -m "$(commit)"
	@git push -u origin master

built:
	@fvm flutter build apk --obfuscate --split-debug-info=project/debuginfo

luncher:
	@fvm flutter pub run flutter_launcher_icon