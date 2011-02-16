include makefile.rules


all:
	cd ./src/ && make

clean:
	cd ./src/ && make clean

distclean: clean
	rm -f makefile.rules
	rm -rf ./doc
	rm -f $(EXEC)

dist: distclean
	cd ../ && tar jcf ./$(NAME_PROJ).tar.bz2 $(NAME_PROJ)/
	cp ../$(NAME_PROJ).tar.bz2 /u/all/chevet_s/rendu
	cd /u/all/chevet_s/rendu ; tar xvf $(NAME_PROJ).tar.bz2
	cd /u/all/chevet_s/rendu/$(NAME_PROJ)/ ; ./configure && make

doc:
	mkdir doc ;cd src ; doxygen *.c; mv html/ ../doc/ ; mv latex/ ../doc

