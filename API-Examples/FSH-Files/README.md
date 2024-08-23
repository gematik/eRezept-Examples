# Documentation Guide

## Table of Contents
- [Introduction](#introduction)
- [Instructions](#instructions)
  - [Generating the Examples](#generating-the-examples)
  - [Updating or Adding Examples](#updating-or-adding-examples)

## Introduction
This folder contains the FSH files and a script to recreate the examples for the API documentation of a specific Workflow Package profile.

## Instructions
### Generating the Examples
Follow these steps to produce the examples for the specified version:
1. Update the version parameters in the `Versioning.fsh` file.
2. Run the `main.sh` script.
3. The examples will be generated in the `output` folder.

### Updating or Adding Examples
The examples are located in the `/input/fsh/examples` folder, with subfolders corresponding to the various pages. These FSH files can be modified, and new ones can be added.

- Any examples that need to remain as JSON files and not be converted to XML files should be added to the `/scripts/process_files.sh` script.
- Any non-FSH files added to the input folders will be copied as-is to the corresponding subfolder in the `output` folder. This is useful for non-FHIR examples that are also being displayed.
