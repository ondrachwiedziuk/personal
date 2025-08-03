module Jekyll
  class PhotoPageGenerator < Generator
    safe true
    priority :low

    def generate(site)
      site.collections['galleries'].docs.each do |gallery|
        gallery_slug = gallery.data['slug']
        gallery_title = gallery.data['title']
        gallery_url = gallery.url
        
        next unless gallery.data['photos']
        
        gallery.data['photos'].each do |photo|
          site.pages << PhotoPage.new(site, gallery_slug, gallery_title, gallery_url, photo)
        end
      end
    end
  end

  class PhotoPage < Page
    def initialize(site, gallery_slug, gallery_title, gallery_url, photo)
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
      
      # Add optional data if present
      self.data['description'] = photo['description'] if photo['description']
      self.data['date'] = photo['date'] if photo['date']
      self.data['exif'] = photo['exif'] if photo['exif']
      
      # Set empty content
      self.content = ''
    end
  end
end
