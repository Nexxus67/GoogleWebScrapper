# GoogleWebScrapper
A google web scrapper written in perl


This code is a Perl script that scrapes Google search results for a given search term. It uses the WWW::Mechanize and HTML::TreeBuilder modules to navigate to each page of search results and extract the titles and URLs of the results using HTML tags and classes. The script includes variables to customize the search term, number of pages to scrape, and results per page, and uses a for loop to iterate through each page of results. The extracted titles and URLs are printed to the console. Additionally, it has been updated to include pagination functionality, allowing it to scrape beyond the first page of search results.
