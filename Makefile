PROJECT_DIR=TranslatorAPI

gitSara:
	git config --global user.name sara
	git config --global user.email 20233005742@estudantes.ifpr.edu.br

gitAna:
	git config --global user.name ana
	git config --global user.email ana.luiza.kauffman@gmail.com

gitIsa:
	git config --global user.name isa
	git config --global user.email isadora.izlou@gmail.com

run:
	cd $(PROJECT_DIR) && npm install && npm run dev
