module Jekyll
  class PhotoPageGenerator < Generator
    safe true
    priority :low

    def generate(site)
      site.collections['galleries'].docs.each do |gallery|
        gallery_slug = gallery.data['slug']
        gallery_title = gallery.data['title']
        gallery_url = gallery.url
        photos = gallery.data['photos']
        
        next unless photos
        
        photos.each_with_index do |photo, index|
          # Calculate previous and next photos (with wrap-around)
          prev_index = index == 0 ? photos.length - 1 : index - 1
          next_index = index == photos.length - 1 ? 0 : index + 1
          
          prev_photo = photos[prev_index]
          next_photo = photos[next_index]
          
          site.pages << PhotoPage.new(site, gallery_slug, gallery_title, gallery_url, photo, prev_photo, next_photo)
        end
      end
    end
  end

  class PhotoPage < Page
    def initialize(site, gallery_slug, gallery_title, gallery_url, photo, prev_photo, next_photo)
      @site = site
      @base = site.source
      @dir = "photos/#{gallery_slug}"
      @name = "#{photo['filename'].gsub(/\.[^.]+$/, '')}.html"

      self.process(@name)
      
      # Set the layout and data directly instead of reading from file
      self.data = {
        'layout' => 'photo',
        'title' => photo['title'] || photo['filename'],
        'filename' => photo['filename'],
        'gallery_slug' => gallery_slug,
        'gallery_title' => gallery_title,
        'gallery_url' => gallery_url
      }
      
      # Add navigation data
      self.data['prev_photo'] = {
        'filename' => prev_photo['filename'],
        'title' => prev_photo['title'] || prev_photo['filename'],
        'url' => "/photos/#{gallery_slug}/#{prev_photo['filename'].gsub(/\.[^.]+$/, '')}.html"
      }
      
      self.data['next_photo'] = {
        'filename' => next_photo['filename'],
        'title' => next_photo['title'] || next_photo['filename'],
        'url' => "/photos/#{gallery_slug}/#{next_photo['filename'].gsub(/\.[^.]+$/, '')}.html"
      }
      
      # Add optional data if present
      self.data['description'] = photo['description'] if photo['description']
      self.data['date'] = photo['date'] if photo['date']
      self.data['exif'] = photo['exif'] if photo['exif']
      
      # Set empty content
      self.content = ''
    end
  end
end
