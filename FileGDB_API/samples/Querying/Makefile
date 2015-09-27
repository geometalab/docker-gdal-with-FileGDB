# Makefile - Querying

include ../../include/make.include
CXXFLAGS+=-W -fexceptions -D_CONSOLE $(CXXDEF) -I../../include $(CXXOTHER)
LD=$(CXX) $(CXXFLAGS)
LDFLAGS+= -L ../../lib
LIBS+=-lFileGDBAPI
ifndef TARGET
TARGET=../bin/Querying
endif
.PHONY: all
all: $(TARGET)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -c $<

SOURCE_FILES= \
	./Querying.cpp

HEADER_FILES= \

SRCS=$(SOURCE_FILES) $(HEADER_FILES)

OBJS=$(SOURCE_FILES:.cpp=.o)

$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

.PHONY: clean
clean:
	-rm -f -v $(OBJS) $(TARGET)
