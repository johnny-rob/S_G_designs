module ApplicationHelper

  def copyright_generator
    PinneyViewTool::Renderer.copyright 'Jonathan Pinney', 'All rights reserved.'
  end

  ##Navigation helper
  def nav_items
    [
      {
        url: root_path,
        title: 'interiors'
      },
      {
        url: about_path,
        title: 'about'
      },
      {
        url: services_path,
        title: 'services'
      },
      ##{
        ##url: blogs_path,
        ##title: 'Blog'
      ##},
      {
        url: portfolios_path,
        title: 'design boards'
      },
      {
        url: contact_path,
        title: 'contact'
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
