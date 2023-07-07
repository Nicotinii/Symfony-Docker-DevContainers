.DEFAULT_GOAL := help

# Colors
RESET   = \033[0m
RED     = \033[0;31m
GREEN   = \033[0;32m
YELLOW  = \033[0;33m
BLUE    = \033[0;34m
BG_GREEN = \e[0;30;42m\n\n
BG_RED = \e[0;30;41m\n\n
BG_YELLOW = \e[0;30;43m\n\n
PADDING_GREEN  = \e[42m\n$(RESET)
PADDING_RED  = \e[41m\n$(RESET)
PADDING_YELLOW  = \e[43m\n$(RESET)

help:
	@echo ""
	@echo ""
	@echo "$(RED)Usage:$(RESET) make $(GREEN)[target]$(RESET)"
	@echo ""
	@echo "$(RED)Targets:$(RESET)"
	@echo "$(GREEN)  new$(RESET)             $(BLUE)Create a new Symfony project"
	@echo "$(GREEN)  install$(RESET)         $(BLUE)Install dependencies"
	@echo "$(GREEN)  runall$(RESET)          $(BLUE)Start the Symfony dev server with yarn encore"
	@echo "$(GREEN)  run$(RESET)             $(BLUE)Start the Symfony dev server"
	@echo ""
	@echo ""

new:
	@echo "$(BG_GREEN)  Create a new wonderful project  $(PADDING_GREEN)"
	symfony new symfony
	@echo "$(BG_YELLOW)  Wait i make my tambouille  $(PADDING_YELLOW)"
	@echo "$(BG_RED)  Please cut an paste symfony to your actual folder  $(PADDING_RED)"
	@read -p "PRESS ENTER when is made : " project_name; \
	npm install yarn
	composer require symfony/webpack-encore-bundle
	@echo "$(BG_RED)  VANNNISHHH !!!  $(PADDING_RED)"
	rm -rf symfony;
	@echo "$(BG_GREEN)  Finish  $(PADDING_GREEN)"

install:
	composer require symfony/orm-pack
	composer require --dev symfony/maker-bundle
	make yarn

yarn:
	composer require symfony/webpack-encore-bundle
	yarn install

run:
	symfony server:start

runall:
	symfony server:start & yarn encore dev-server