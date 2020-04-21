namespace :scrape do
  desc "Scrape guitar forum"

  task guitars: :environment do
    scrape Guitar
  end

  task gear: :environment do
    scrape Gear
  end

end

def scrape(object)
  puts "scraping #{object} pages..."
  scraper = "#{object}Scraper".constantize.new
  scraper.parse_pages { |page| puts "\tparsing page #{page}..." }
  scraper.create_posts(object)
  puts "scraping complete"
end

