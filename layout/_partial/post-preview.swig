<section class="postpreview">
  <header class="postpreview__header">
    <h1 class="margin-zero">
      <a href="{{ url_for( post.path ) }}" class="postpreview__title">
        <time class="postpreview__date" datetime="{{ date_xml( post.date ) }}">
          {{ date( post.date, 'DD/MM/YYYY' ) }}
        </time><br/>
        {{ post.title }}
      </a>
    </h1>
  </header>
  <p class="postpreview__excerpt">
    {% if post.description %}
      {{ post.description }}
    {% else %}
      {{ post.excerpt }}
    {% endif %}
  </p>
  <footer class="postpreview__footer">
    {% if post.tags.length %}
    <span>{{ __( 'tags.tagged_in' ) }} </span>
    <ul class="taglist--inline">
      {% for tag in post.tags %}
      <li class="taglist__item--inline"> <a href="{{ config.url }}/{{ tag.path }}" class="tag">{{ tag.name }}</a></li>
      {% endfor %}
    </ul>
    {% endif %}
  </footer>
</section>
