TARGET ?= pfetch
PREFIX ?= /usr/local

all:
	@echo Run \'make install\' to install $(TARGET)

clean:
	rm -f pfetch

install:
	@install -Dm755 $(TARGET) $(DESTDIR)$(PREFIX)/bin/$(TARGET)
	@echo Installed $(TARGET) to $(DESTDIR)$(PREFIX)/bin/$(TARGET)

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/$(TARGET)
	@echo Uninstalled $(TARGET) from $(DESTDIR)$(PREFIX)/bin/$(TARGET)

.PHONY: clean install uninstall
