#!/bin/bash

# Resize feature images (Use PNG sources -> Output 800px JPEG)
echo "Optimizing feature images (PNG -> JPEG)..."
sips -s format jpeg -Z 800 docs/images/feature-search.png --out docs/images/feature-search-mobile.jpg
sips -s format jpeg -Z 800 docs/images/feature-radar.png --out docs/images/feature-radar-mobile.jpg
sips -s format jpeg -Z 800 docs/images/feature-stats.png --out docs/images/feature-stats-mobile.jpg

# Resize Hero image (Use WebP source -> Output 800px JPEG)
echo "Optimizing hero image (WebP -> JPEG)..."
sips -s format jpeg -Z 800 docs/git-summary-demo-1.webp --out docs/git-summary-demo-mobile-1.jpg

echo "✅ Optimization complete. Generated mobile-optimized JPEGs (800px)."
