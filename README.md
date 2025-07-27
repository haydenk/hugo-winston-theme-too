# Hugo Winston Theme

Hugo Winston is a bold minimal blogging theme.

[Live Demo](https://haydenk.github.io/hugo-winston-theme-too/) |
[Zerostatic Themes](https://www.zerostatic.io/)

![Hugo Winston Theme screenshot](https://www.zerostatic.io/theme/hugo-winston/hugo-winston-screenshot.png)

## Theme features

- Posts (Markdown)
- Basic Page (Markdown)
- Plain CSS (No need for Hugo extended)
- Responsive design
- 100/100 Google Lighthouse speed score
- 100/100 Google Lighthouse SEO score
- 100/100 Google Lighthouse accessibility score
- Google analytics configured in `config.toml`
- Configure GID using env variable HUGO_GOOGLE_ANALYTICS_ID, compatible with Netlify.
- Title, meta description and meta tags automatically generated for every page
- OG Meta data for Facebook and Twitter
- Semantic HTML document structure

## Installation

**1. Install Hugo**

To use this theme you will first need to have Hugo installed. Please follow the official [installation guide](https://gohugo.io/getting-started/installing/)

**2. Create a new Hugo site**

This will create a fresh Hugo site in the folder `mynewsite`.

```
hugo new site mynewsite
```

**3. Install the theme**

Adding the theme as a module is the simplest way. [Check out this page](https://discourse.gohugo.io/t/how-to-add-a-theme-using-modules-for-beginners/20665) for the discussion.

Essentially the staps break down as:

1. Initialize your site as a hugo module if you have not done that already. 

`hugo mod init yourname.github.io/sitename`


2. Add the theme to the module imports
```
[module]

  [[module.imports]]
    path = "github.com/haydenk/hugo-winston-theme-too"
    disable=false
```

3. To use the theme, you'll need to supply the full module name in the theme parameter.

`theme = "github.com/haydenk/hugo-winston-theme-too"`

**4. Run Hugo**

After installing the theme for the first time, generate the Hugo site.

You run this command from the root folder of your Hugo site ie `mynewsite`

```
hugo
```

For local development run Hugo's built-in local server.

```
hugo server
```

Now enter [`localhost:1313`](http://localhost:1313) in the address bar of your browser.

# Localhost inside exampleSite

You can run this site without installing it as a hugo theme using the following command. I use this for theme development.

```
make serve
```

# Configuration

### Config options

```toml
# config.toml
[params]
  google_analytics_id = ""
  twitter_handle = "@zerostaticio"
  showAuthorOnHomepage = true
  showAuthorOnPosts = false
  showIntroContentOnHomepage = true
  showPostsOnHomepage = true
  usePaginationOnHomepage = false
  limitPostsOnHomepage = 3 # only used if usePaginationOnHomepage is false
  sortPostsByDateOldestFirst = false
  addDot = true
  addFrame = true
  highlightColor = '#7b16ff'
  baseColor = "#ffffff"
  baseOffsetColor = "#eaeaea"
  headingColor = "#1c1b1d"
  textColor = "#4e5157"
  dotColor = "#7b16ff"
  enableGoogleFonts = true 
  googleFontsUrl = "https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap"
  fontFamilyHeading = "Poppins"
  fontFamilyParagraph = "Helvetica"
  fontFamilyMonospace = "monospace"
```

### Google Analytics

Add your google analytics ID to the `config.toml`

```toml
# config.toml
[params]
  google_analytics_id="UA-132398315-1"
```

### Plausible Analytics

Add your plausible analytics domain to the `config.toml`.
This is `data-domain` in your [tracking script code](https://plausible.io/docs/plausible-script).

```toml
# config.toml
[params]
  plausible_analytics_domain = "example.com"
```
