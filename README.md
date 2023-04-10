# GoogleWebScrapper
A google web scrapper written in perl


This code is a Perl script that scrapes Google search results for a given search term. It uses the WWW::Mechanize and HTML::TreeBuilder modules to navigate to each page of search results and extract the titles and URLs of the results using HTML tags and classes. The script includes variables to customize the search term, number of pages to scrape, and results per page, and uses a for loop to iterate through each page of results. The extracted titles and URLs are printed to the console. Additionally, it has been updated to include pagination functionality, allowing it to scrape beyond the first page of search results.


The script requires the following modules to be installed:

WWW::Mechanize
HTML::TreeBuilder
To install these modules, you can use the cpan command line tool:


cpan WWW::Mechanize HTML::TreeBuilder


Once the modules are installed, you can run the script by executing the following command:

perl webscrapper.pl

Before running the script, you should edit the following variables to customize the search:

$search_term: the search term to use on Google.
$max_pages: the maximum number of pages to scrape.
$results_per_page: the number of results to fetch per page.
The script will output the title and URL of each search result to the console.
