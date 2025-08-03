#!/bin/bash

# Photo Gallery Thumbnail Generator
# This script generates thumbnails and web-optimized images from originals
# Requires ImageMagick (convert command)

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PHOTOS_DIR="$SCRIPT_DIR/assets/photos"
ORIGINALS_DIR="$PHOTOS_DIR/originals"
THUMBNAILS_DIR="$PHOTOS_DIR/thumbnails"
FULL_DIR="$PHOTOS_DIR/full"

# Check if ImageMagick is installed
if command -v magick &> /dev/null; then
    CONVERT_CMD="magick"
elif command -v convert &> /dev/null; then
    CONVERT_CMD="convert"
else
    echo "Error: ImageMagick not found. Please install ImageMagick first."
    echo "Ubuntu/Debian: sudo apt-get install imagemagick"
    echo "macOS: brew install imagemagick"
    exit 1
fi

# Function to process images for a gallery
process_gallery() {
    local gallery_name="$1"
    local orig_gallery_dir="$ORIGINALS_DIR/$gallery_name"
    local thumb_gallery_dir="$THUMBNAILS_DIR/$gallery_name"
    local full_gallery_dir="$FULL_DIR/$gallery_name"
    
    if [ ! -d "$orig_gallery_dir" ]; then
        echo "Gallery '$gallery_name' not found in originals directory"
        return 1
    fi
    
    # Create output directories
    mkdir -p "$thumb_gallery_dir"
    mkdir -p "$full_gallery_dir"
    
    echo "Processing gallery: $gallery_name"
    
    # Process each image in the gallery
    find "$orig_gallery_dir" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) | while read -r orig_file; do
        
        local filename=$(basename "$orig_file")
        local base_name="${filename%.*}"
        local extension="${filename##*.}"
        
        # Convert to jpg for consistency
        local output_filename="${base_name}.jpg"
        local thumb_file="$thumb_gallery_dir/$output_filename"
        local full_file="$full_gallery_dir/$output_filename"
        
        echo "  Processing: $filename"
        
        # Generate thumbnail (400px width, maintain aspect ratio)
        if [ ! -f "$thumb_file" ] || [ "$orig_file" -nt "$thumb_file" ]; then
            echo "    Creating thumbnail..."
            $CONVERT_CMD "$orig_file" \
                -resize "400x400>" \
                -quality 85 \
                -strip \
                "$thumb_file"
        fi
        
        # Generate web-optimized full size (1200px width, maintain aspect ratio)
        if [ ! -f "$full_file" ] || [ "$orig_file" -nt "$full_file" ]; then
            echo "    Creating web-optimized version..."
            $CONVERT_CMD "$orig_file" \
                -resize "1200x1200>" \
                -quality 90 \
                -strip \
                "$full_file"
        fi
    done
}

# Main execution
if [ $# -eq 0 ]; then
    # Process all galleries
    echo "Processing all galleries..."
    for gallery_dir in "$ORIGINALS_DIR"/*; do
        if [ -d "$gallery_dir" ]; then
            gallery_name=$(basename "$gallery_dir")
            process_gallery "$gallery_name"
        fi
    done
else
    # Process specific gallery
    process_gallery "$1"
fi

echo "Image processing complete!"
