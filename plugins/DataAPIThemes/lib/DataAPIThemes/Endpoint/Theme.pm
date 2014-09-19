package DataAPIThemes::Endpoint::Theme;
use strict;

use MT::DataAPI::Endpoint::Common;
use MT::Theme;

sub list {
	my ($app, $endpoint) = @_;
	my %all_themes = %{MT::Theme->load_all_themes()};
	my @keys = keys %all_themes;
	return {
		totalResults => $#keys + 1,
		items => [map { {
			id => $_->id,
			version => $_->version,
			description => $_->description,
			} } values %all_themes],
	};
}

sub get {
	my ($app, $endpoint) = @_;
	my ($blog) = context_objects(@_) or return;
	my $theme = $blog->theme;
	return {
		id => $theme->id,
		version => $theme->version,
		description => $theme->description,
	};
}

sub apply {
	my ($app, $endpoint) = @_;
	my ($blog) = context_objects(@_) or return;
	$blog->apply_theme($app->param('theme_id'));
	return {
		result => 'OK'
	}
}

1;
