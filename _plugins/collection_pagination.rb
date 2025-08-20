module Jekyll
  # Generates paginated listing pages for selected collections (except page 1 which is the original page file)
  class CollectionPagination < Generator
    safe true
    priority :low

    PAGE_SIZE = 15
    COLLECTIONS = %w[galleries recipes].freeze

    def generate(site)
      COLLECTIONS.each do |coll_name|
        coll = site.collections[coll_name]
        next unless coll

        docs = coll.docs.sort_by { |d| d.data['date'] || Time.at(0) }.reverse
        total_pages = (docs.size.to_f / PAGE_SIZE).ceil
        next if total_pages <= 1

        (2..total_pages).each do |page_number|
          paginate(site, coll_name, docs, page_number, total_pages)
        end
      end
    end

    def paginate(site, coll_name, docs, page_number, total_pages)
      base_path = coll_name == 'galleries' ? '/photos' : "/#{coll_name}"
      dir = File.join(base_path, 'page', page_number.to_s)

      page = PageWithoutAFile.new(site, site.source, dir, 'index.html')
      page.content = "{% include collection_paginated.html collection_name='#{coll_name}' page=#{page_number} total_pages=#{total_pages} per_page=#{PAGE_SIZE} base_path='#{base_path}' %}"
      page.data['layout'] = 'page'
      page.data['title'] = coll_name == 'galleries' ? 'Photos' : 'Recipes'
      slice_start = (page_number - 1) * PAGE_SIZE
      page.data['page_items'] = docs.slice(slice_start, PAGE_SIZE) || []
      page.data['total_items'] = docs.size
      site.pages << page
    end
  end
end
