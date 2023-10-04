objects := jpg2tga.o picojpeg.o

%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS)

jpg2tga: $(objects)
	$(CC) -o jpg2tga $(objects) -lm

clean:
	rm -f $(objects) jpg2tga