<script type="application/ld+json">
{
  "@context": "http://schema.org",
  "@type": "Article",
  "publisher": "{{ meta.site }}",
  "author": {
    "@type": "Person",
    "name": "{{ author.name }}",
    "url": "{{ author.url }}",
    "sameAs": null,
    "description": "{{ author.description }}"
  },
  "headline": "{{ meta.title }}",
  "url": "{{ meta.url }}",
  "datePublished": "{{ meta.publishedTime }}",
  "image": "{{ meta.image }}",
  "keywords": "{{ meta.tags.join(', ') }}",
  "description": "{{ meta.description }}",
  "license": "{{ meta.license }}"
}
</script>
