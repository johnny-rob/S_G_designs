module ApplicationHelper

  def copyright_generator
    PinneyViewTool::Renderer.copyright 'Jonathan Pinney', 'All rights reserved.'
  end

  ##Navigation helper
  def nav_items
    [
      {
        url: root_path,
        title: 'Interiors'
      },
      {
        url: about_path,
        title: 'About'
      },
      {
        url: services_path,
        title: 'Services'
      },
      ##{
        ##url: blogs_path,
        ##title: 'Blog'
      ##},
      ##{
        ##url: portfolios_path,
        ##title: 'Design Portfolio'
      ##},
      {
        url: contact_path,
        title: 'Contact'
      },
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''
    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

end
