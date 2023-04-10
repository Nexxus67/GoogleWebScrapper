#!/usr/bin/perl
use strict;
use warnings;
use WWW::Mechanize;
use HTML::TreeBuilder;

my $search_term = 'example'; # change this to your desired search term
my $max_pages = 3; # change this to the maximum number of pages to scrape
my $url_template = 'https://www.google.com/search?q=%s&start=%d';
my $results_per_page = 10; # number of results per page

my $mech = WWW::Mechanize->new();

for (my $page_num = 0; $page_num < $max_pages; $page_num++) {
    my $start_index = $page_num * $results_per_page;
    my $url = sprintf($url_template, $search_term, $start_index);
    $mech->get($url);

    my $tree = HTML::TreeBuilder->new_from_content($mech->content());
    my @results = $tree->look_down(
        '_tag', 'div',
        'class', 'g'
    );
    
    foreach my $result (@results) {
        my $title_elem = $result->look_down('_tag', 'h3', 'class', 'r');
        my $title = $title_elem->as_text() if $title_elem;
        
        my $url_elem = $result->look_down('_tag', 'a');
        my $url = $url_elem->attr('href') if $url_elem;
        
        print "Title: $title\n";
        print "URL: $url\n";
        print "\n";
    }
}
