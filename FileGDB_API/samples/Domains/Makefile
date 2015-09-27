# Makefile - Domains

include ../../include/make.include
CXXFLAGS+=-W -fexceptions -D_CONSOLE $(CXXDEF) -I../../include $(CXXOTHER)
LD=$(CXX) $(CXXFLAGS)
LDFLAGS+= -L"../../lib"
LIBS+=-lFileGDBAPI
ifndef TARGET
TARGET=../bin/Domains
endif
.PHONY: all
all: $(TARGET)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -c $<

SOURCE_FILES= \
	./Domains.cpp

HEADER_FILES= \

RESOURCE_FILES= \
	./SpeedLimit.xml

SRCS=$(SOURCE_FILES) $(HEADER_FILES) $(RESOURCE_FILES) 

OBJS=$(SOURCE_FILES:.cpp=.o)

$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

.PHONY: clean
clean:
	-rm -f -v $(OBJS) $(TARGET)
