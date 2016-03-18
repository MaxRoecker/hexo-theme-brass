<meta property="og:site_name" content="{{ meta.site }}" />
<meta property="og:type" content="{{ meta.type.toLowerCase() }}" />
<meta property="og:title" content="{{ meta.title }}" />
<meta property="og:description" content="{{ meta.description }}" />
<meta property="og:url" content="{{ meta.url }}" />
<meta property="og:image" content="{{ meta.image }}" />
{% if ( meta.type === TYPES.ARTICLE ) -%}
<meta property="article:published_time" content="{{ meta.publishedTime }}" />
{% if site.data.meta.facebook.profile -%}
<meta property="article:author" content="{{ site.data.meta.facebook.profile }}" />
{%- endif %}
{%- for tag in meta.tags -%}
<meta property="article:tag" content="{{ tag }}" />
{%- endfor %}
{%- endif %}
