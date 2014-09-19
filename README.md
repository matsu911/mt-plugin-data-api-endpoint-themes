# mt-plugin-data-api-endpoint-themes

Add Movable Type's Data API Endpoints and Resources for MT::Theme Object.

### Themes: list

List all the themes installed.

Authorization is required.

This method accepts GET only.

    GET https://your-host/your-mt-api.cgi/v1/themes

### Themes: get

Get current theme info of a blog or site.

Authorization is required.

This method accepts GET only.

    GET https://your-host/your-mt-api.cgi/v1/sites/:site_id/theme

### Themes: apply

Get a theme to specified blog or site.

Authorization is required.

This method accepts POST only.

    POST https://your-host/your-mt-api.cgi/v1/sites/:site_id/theme
