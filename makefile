all:
	@echo "Installing..."
	@cp msfetch ${HOME}/msfetch
	@echo "Path: ${HOME}/msfetch"
	@chmod 700 ${HOME}/msfetch
	@cp .msfetchrc ${HOME}/.msfetchrc
	@echo "Configuration File: ${HOME}/.msfetchrc"
	@chmod 600 ${HOME}/.msfetchrc
	@echo "Completed!"

clean:
	@echo "Uninstalling..."
	@echo "Removing ${HOME}/msfetch"
	@rm ${HOME}/msfetch
	@echo "Removing ${HOME}/.msfetchrc"
	@rm ${HOME}/.msfetchrc
	@echo "Completed!"
