PIP = pip3
REQUIREMENTS_FILE = requirements.txt

ifeq ($(OS),Windows_NT)
	RM = del /Q
else
	RM = rm -f
endif

.PHONY: $(REQUIREMENTS_FILE)

requirements.txt:
	@echo "Generating $(REQUIREMENTS_FILE) file..."
	@$(PIP) freeze > $(REQUIREMENTS_FILE)
