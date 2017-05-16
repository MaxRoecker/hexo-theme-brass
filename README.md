# Brass #
**Brass** is a colorful but simple theme made for simple blogs powered by [Hexo](http://hexo.io). Features included:

* [AMP](https://www.ampproject.org/) (Accelerated Mobile Pages) compliant;
* Style based on CSS Variables, making easy to set a new palette of colors;
* Configuration based in [Hexo Data Files](https://hexo.io/docs/data-files.html), with fallback if no configuration is set. No change in theme files is needed;
* SEO friendly, with build-in [Twitter cards](https://dev.twitter.com/cards/overview) and [Facebook Open Graph](https://developers.facebook.com/docs/sharing/opengraph) meta-tags as well [JSON-ld metadata](https://developers.google.com/structured-data/rich-snippets/articles#examples).

---
## Setup ##
**Brass theme requires Hexo 3.2.0 or above**

1) In your Hexo blog directory, install theme by cloning the repository:

``` bash
$ git clone https://github.com/MaxRoecker/hexo-theme-brass.git themes/brass
```

2) Enable it in your `_config.yml`, setting the `theme` property to `brass`.

``` yml
# Hexo Configuration file: "_config.yml"
# ...
theme: brass
# ...
```


---
## Configuration ##
The configuration is based on [Hexo Data Files](https://hexo.io/docs/data-files.html). First of all, it's need to create an `meta.yml` in your `_data` directory.

### Author ###
**Brass** theme extends the information about author of the blog. To configure the new blog's author information, in your `meta.yml` file, create the following structure:

``` yml
# "source/_data/meta.yml"
author:
  photo:
  bio:
    header:
    content:
  intro:
    header:
    content:
```

* `author.photo`: A URI for an the photo of author.
* `author.bio.header`: The header of the bio section in the footer.
* `author.bio.content`: The content of the bio section in the footer.
* `author.intro.header`: The header of the intro section in the footer.
* `author.intro.content`: The content of the intro section in the footer.

### Website ###
You can change site configuration like menu, logo or license with the following configuration.

``` yml
site:
  license:
    url:
    text:
  logo:
  menu:
```

* `site.license.url`: an URI with legal copy of the license of the content of the site, like [Creative Commons] (https://creativecommons.org/licenses/by/4.0/legalcode) or [Apache License](http://www.apache.org/licenses/LICENSE-2.0)
* `site.license.text`: The disclaimer of blog, like Copyright.
* `site.logo`: an URI with the logo of the site, showed at the header of blog. It's recomended to use an `data:base64` URI for instant load.
* `site.menu`: an YML array of the main navigation menu of the blog. Must be in the following configuration `menuitem: '/address/'`. The following code samples a simple menu:

``` yml
menu:
  Home: '/'
  About: '/about/'
  More Posts: '/blog/page/2/'
```
### Analytics ###
In order to link your blog with Google Analytics, you should set in your `meta` file the property `googleAnalytics.id` with the Google Analytics ID. See below:
```yml
googleAnalytics:
  id: 'UA-########-#'
```

### Social ###
To add custom social meta-tags — like [Twitter cards](https://dev.twitter.com/cards/overview) or Facebook [Open Graph](https://developers.facebook.com/docs/sharing/opengraph) — and link the content to your profile at social networks, you must set the following configurations.

#### Twitter ###
``` yml
twitter:
  site:
  creator:
```
* `twitter.site`: The site Twitter user.
* `twitter.creator`: The author's Twitter user.

#### Facebook ###
``` yml
facebook:
  profile:
```
* `facebook.profile`: The URL of author's Facebook profile.



---
## Customize posts/pages ##
The **Brass** theme provides a way to customize blog posts and pages by setting configurations properties in post [Front-matter](https://hexo.io/docs/front-matter.html).

### Featured posts ###
To set some posts in the Featured section in the blog homepage, you must set the `featured` to `true`. Featured posts are always highlighted in the home page.Example:
``` yml
featured: true
```

### Cover Image ###
To customize the cover image of your blog post/page, you must set the `cover` property in front-matter. **It's required to set the `post_asset_folder: true` in your `config.file` and save your image at post asset directory**. See the sample code bellow:
``` yml
# Image cover.img is inside post asset folder
cover:
  path: 'cover.img'
  title: 'A very nice cover'
  src: 'http://source.cover.com'
```

* `cover.path`: relative path of the cover image inside post asset directory
* `cover.title`: The title or name of the cover image.
* `cover.src`: The source of the image, the URI where the cover image can be found. If this property is empty, it's assumed that the blog itself is the source of the image.


### Post Description ###
To custom post/page description, set the `description` property in post/page front-matter with as string. Example:
``` yml
# Image cover.img is inside post asset folder
description: Proin vitae quam fringilla, venenatis ligula a, lacinia metus
```

### Example ###
The following examplo shows a complete blog post. **Tip:** If you custom your posts/pages routinely, change your `scaffolds`.

```md
---
title: Lorem ipsum dolor sit amet
description: Proin vitae quam fringilla, venenatis ligula a, lacinia metus
date: 2016-03-14 13:56:42
tags:
- Lorem ipsum
- sit amet
cover: 'cover-lorem-ipsum.jpg'
featured: true
---
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vitae quam fringilla, venenatis ligula a, lacinia metus. Proin sit amet tempus tortor, at sagittis elit. Morbi sollicitudin, nulla non commodo malesuada, arcu purus faucibus neque, sed congue ligula sapien nec leo. Phasellus tincidunt mollis erat, iaculis hendrerit justo maximus eu. Fusce aliquet diam ac felis euismod, vitae viverra massa posuere. Pellentesque placerat, lectus sed elementum condimentum, magna nisl lobortis sapien, vel rhoncus mi metus eget arcu. Etiam aliquam libero quis tristique varius. Phasellus ut eros at velit eleifend dapibus at nec orci. Maecenas elit velit, maximus eu scelerisque accumsan, euismod at arcu. Nullam interdum mauris arcu, ac tempus nisl lacinia non. Proin viverra, purus nec pellentesque placerat, odio dolor dictum nisi, a lobortis nulla ex non mi. Sed ullamcorper neque turpis, eget commodo tortor egestas a.
```

---
## License ##
[The MIT License (MIT)](https://maxroecker.mit-license.org/)
