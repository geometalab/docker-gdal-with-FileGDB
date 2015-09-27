# Makefile - FileGDBAPI Samples

include ../include/make.include

.PHONY: all
all: \
	bin \
 	Domains \
 	Editing \
 	ExecutingSQL \
 	FeatureDatasets \
 	GeodatabaseManagement \
	Querying \
	ShapeBuffer \
	TableSchema \
	TableSchemaXML

bin:
	mkdir -p bin

.PHONY: Display
Display:
	$(MAKE) -C Display

.PHONY: Domains
Domains:
	$(MAKE) -C Domains
	
.PHONY: Editing
Editing:
	$(MAKE) -C Editing

.PHONY: ExecutingSQL
ExecutingSQL:
	$(MAKE) -C ExecutingSQL

.PHONY: FeatureDatasets
FeatureDatasets:
	$(MAKE) -C FeatureDatasets

.PHONY: GeodatabaseManagement
GeodatabaseManagement:
	$(MAKE) -C GeodatabaseManagement

.PHONY: Querying
Querying:
	$(MAKE) -C Querying

.PHONY: ShapeBuffer 
ShapeBuffer:
	$(MAKE) -C ShapeBuffer

.PHONY: TableSchema
TableSchema:
	$(MAKE) -C TableSchema

.PHONY: TableSchemaXML
TableSchemaXML:
	$(MAKE) -C TableSchemaXML

.PHONY: clean
clean:
	$(MAKE) -C Display clean
	$(MAKE) -C Domains clean
	$(MAKE) -C Editing clean
	$(MAKE) -C ExecutingSQL clean
	$(MAKE) -C FeatureDatasets clean
	$(MAKE) -C GeodatabaseManagement clean
	$(MAKE) -C Querying clean
	$(MAKE) -C ShapeBuffer clean
	$(MAKE) -C TableSchema clean
	$(MAKE) -C TableSchemaXML clean

