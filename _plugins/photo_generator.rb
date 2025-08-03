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
      self.read_yaml(File.join(@base, '_layouts'), 'photo.html')
      
      self.data['title'] = photo['title'] || photo['filename']
      self.data['filename'] = photo['filename']
      self.data['gallery_slug'] = gallery_slug
      self.data['gallery_title'] = gallery_title
      self.data['gallery_url'] = gallery_url
      self.data['description'] = photo['description'] if photo['description']
      self.data['date'] = photo['date'] if photo['date']
      self.data['exif'] = photo['exif'] if photo['exif']
      self.data['layout'] = 'photo'
    end
  end
end
