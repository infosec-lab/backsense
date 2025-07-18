#!/bin/bash

# BackSense Build Script for Linux/Mac
# This script compiles the BackSense Burp Suite extension

echo "Building BackSense Burp Suite Extension..."

# Check if Java is installed
if ! command -v javac &> /dev/null; then
    echo "Error: Java compiler (javac) not found. Please install Java 8 or higher."
    exit 1
fi

# Check Java version
JAVA_VERSION=$(javac -version 2>&1 | head -n 1 | cut -d' ' -f2 | cut -d'.' -f1)
if [ "$JAVA_VERSION" -lt 8 ]; then
    echo "Error: Java 8 or higher is required. Current version: $JAVA_VERSION"
    exit 1
fi

echo "Java version: $(javac -version 2>&1 | head -n 1)"

# Create target directories
mkdir -p target/classes
mkdir -p target/jar

# Compile Java files
echo "Compiling Java source files..."
javac -cp ".:lib/*" -d target/classes src/main/java/burp/*.java

if [ $? -ne 0 ]; then
    echo "Error: Compilation failed!"
    exit 1
fi

echo "Compilation successful!"

# Copy resources
echo "Copying resources..."
if [ -d "config" ]; then
    cp -r config target/classes/
fi

if [ -d "META-INF" ]; then
    cp -r META-INF target/classes/
fi

# Create JAR file
echo "Creating JAR file..."
cd target/classes
jar cfm ../../BackSense.jar ../../META-INF/MANIFEST.MF burp/* config/* META-INF/*
cd ../..

if [ $? -ne 0 ]; then
    echo "Error: JAR creation failed!"
    exit 1
fi

echo "Build completed successfully!"
echo "Generated: BackSense.jar"
echo ""
echo "To install in Burp Suite:"
echo "1. Open Burp Suite Professional"
echo "2. Go to Extensions → Extensions"
echo "3. Click 'Add' → 'Java'"
echo "4. Select BackSense.jar"
echo "5. Click 'Next' and 'Close'" 