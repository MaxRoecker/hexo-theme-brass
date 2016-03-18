<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content="{{ meta.title }}" />
<meta name="twitter:description" content="{{ meta.description }}" />
<meta name="twitter:url" content="{{ meta.url }}" />
<meta name="twitter:image:src" content="{{ meta.image }}" />
{% if site.data.meta.twitter.site -%}
<meta name="twitter:site" content="{{ site.data.meta.twitter.site }}">
{%- endif %}
{% if site.data.meta.twitter.creator -%}
<meta name="twitter:creator" content="{{ site.data.meta.twitter.creator }}">
{%- endif %}
