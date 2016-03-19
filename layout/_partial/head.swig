{% if page.title %}
<title>{% if page.title %}{{ page.title }} — {% endif %}{{ config.title }}{% if config.subtitle %} - {{ config.subtitle }}{% endif %}</title>
{% else %}
<title>{% if title %}{{ title }} — {% endif %}{{ config.title }}</title>
{% endif %}

<link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'/>
{{ css( [ 'css/normalize', 'css/flexboxgrid.css', 'css/styles.css', 'css/monokai-sublime.css' ] ) }}

<link rel="canonical" href="{{ url }}" />
<meta name="referrer" content="origin">
{{ partial('meta/meta.ejs') }}
<meta name="generator" content="Hexo 3.2.0" />
