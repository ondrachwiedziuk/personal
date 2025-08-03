# Photo Gallery System

This Jekyll site includes a comprehensive photo gallery system that automatically generates thumbnails and web-optimized images from original photos.

## Directory Structure

```
assets/
  photos/
    originals/          # Original high-resolution photos
      gallery-name/
        photo1.jpg
        photo2.jpg
    thumbnails/         # Auto-generated thumbnails (400px)
      gallery-name/
        photo1.jpg
        photo2.jpg
    full/              # Auto-generated web-optimized images (1200px)
      gallery-name/
        photo1.jpg
        photo2.jpg
_galleries/
  gallery-name.md
```

## Automatic Image Processing

The system automatically generates two versions of each image:

1. **Thumbnails** (400px max width) - Used in gallery grids
2. **Web-optimized full-size** (1200px max width) - Used on individual photo pages

Images are only regenerated if the original has been modified, making builds efficient.

## Creating a New Gallery

1. Create a new markdown file in `_galleries/` with this front matter:

```yaml
---
layout: gallery
title: "Gallery Title"
slug: gallery-name
description: "Gallery description"
date: 2024-08-03
cover_photo: cover-image.jpg
photos:
  - filename: photo1.jpg
    title: "Photo 1 Title"
    description: "Optional photo description"
    date: 2024-08-03
    exif:
      camera: "Camera Name"
      lens: "Lens Name" 
      settings: "f/2.8, 1/125s, ISO 400"
  - filename: photo2.jpg
    title: "Photo 2 Title"
---

Optional gallery content goes here.
```

2. Create the originals directory:
   - `assets/photos/originals/gallery-name/`

3. Add your original high-resolution photos:
   - Place original photos in `assets/photos/originals/gallery-name/`
   - Use descriptive filenames
   - Supported formats: JPG, PNG, WEBP

## Workflow

1. **Add original photos** to `assets/photos/originals/gallery-name/`
2. **Generate thumbnails** by running:
   ```bash
   ./generate_thumbnails.sh gallery-name
   # or process all galleries:
   ./generate_thumbnails.sh
   ```
3. **Build the site**:
   ```bash
   bundle exec jekyll build
   # or serve locally:
   bundle exec jekyll serve
   ```

The thumbnail generation script will:
- Create 400px wide thumbnails for gallery grids
- Create 1200px wide web-optimized images for full viewing
- Only regenerate images when originals are newer
- Convert all formats to JPG for consistency
- Strip EXIF data to reduce file size

## Requirements

Install ImageMagick for thumbnail generation:

**Ubuntu/Debian:**
```bash
sudo apt-get install imagemagick
```

**macOS:**
```bash
brew install imagemagick
```

**Windows:**
Download from: https://imagemagick.org/script/download.php#windows

## Gallery Features

- **Automatic thumbnail generation** - Shell script creates optimized images from originals
- **Responsive grid layout** - Galleries adapt to different screen sizes
- **Hover effects** - Thumbnails scale and show captions on hover
- **Individual photo pages** - Each photo gets its own page with full-size view
- **EXIF data display** - Show camera settings and technical details
- **Navigation** - Easy navigation between gallery and individual photos
- **SEO friendly** - Proper meta tags and semantic HTML
- **Efficient builds** - Images only regenerated when originals change

## Image Optimization

The system automatically optimizes images:

- **Thumbnails**: 400px max width, 85% JPEG quality
- **Full-size**: 1200px max width, 90% JPEG quality
- **Aspect ratios**: Always preserved
- **File sizes**: Significantly reduced from originals

## Fallback Mode

If ImageMagick/mini_magick is not available, the system falls back to manual mode:
- Place thumbnails manually in `assets/photos/thumbnails/gallery-name/`
- Place web-optimized images in `assets/photos/full/gallery-name/`

## Generated Pages

- `/photos/` - Main gallery index page
- `/galleries/gallery-name/` - Individual gallery page
- `/photos/gallery-name/photo-name.html` - Individual photo pages

The system automatically generates individual photo pages for each photo in your galleries.
