# Makefile - ProcessTopologies

include ../../include/make.include
CXXFLAGS+=-W -fexceptions -D_CONSOLE $(CXXDEF) -I../../include -I/usr/include/libxml2 -I../../ThirdPartyDependencies/include/libxml2 $(CXXOTHER)
LD=$(CXX) $(CXXFLAGS)
LDFLAGS+= -L../../lib -L../../ThirdPartyDependencies/$(3PLIBDIR)/lib/libxml2
LIBS+=-lFileGDBAPI -lxml2
ifndef TARGET
TARGET=../bin/ProcessTopologies
endif
.PHONY: all
all: $(TARGET)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -c $<

SOURCE_FILES= \
	./LibXMLSession.cpp \
	./ProcessTopologies.cpp \
	./TopologyInterpreter.cpp

HEADER_FILES= \
	./LibXMLSession.h \
	./TopologyInterpreter.h

SRCS=$(SOURCE_FILES) $(HEADER_FILES) $(RESOURCE_FILES) 

OBJS=$(SOURCE_FILES:.cpp=.o)

$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

.PHONY: clean
clean:
	-rm -f -v $(OBJS) $(TARGET)
