all: httpd client
LIBS = -lpthread #-lsocket
httpd: httpd.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

client: simpleclient.c
	gcc -W -Wall -o $@ $<
clean-httpd:
	rm httpd
clean-client:
	rm client
clean:
	rm httpd client