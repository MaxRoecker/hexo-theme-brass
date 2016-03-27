<main>
  <article>
    <header>
      <div class="post__header"
           {% if page.cover.path %}
           style="background-image: url('{{ page.permalink }}{{ page.cover.path }}');
                  background-size: cover;
                  background-position: center;"{% endif %}>
        <div class="post__cover">
          <div class="container">
            <h1 class="post__title">{{ page.url }}{{ page.title }}</h1>
            <p class="post__lead">
              {% if page.description %}
                {{ page.description }}
              {% else %}
                {{ page.excerpt }}
              {% endif %}
            </p>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="post__info">
          {{ __( 'post.published_at') }}
          <time datetime="{{ date_xml( page.date ) }}">
            {{ date( page.date, 'DD/MM/YYYY' ) }}
          </time>
          {% if page.tags.length %}
          — <span>{{ __( 'tags.tagged_in' ) }} </span>
          <ul class="taglist--inline">
            {% for tag in page.tags %}
            <li class="taglist__item--inline"> <a href="{{ config.url }}/{{ tag.path }}" class="tag">{{ tag.name }}</a></li>
            {% endfor %}
          </ul>
          {% endif %}
        </div>
      </div>
    </header>
    
    <section class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 post__content">
          {{ page.content }}
          <hr />
        </div>
      </div>
    </section>
    
    <footer>
      <div class="container">
        <section class="social">
          {% if ( page.cover.src || page.cover.title ) %}
          <p>
            {{ __( 'site.image') }}:
            <a class="social-a" rel="nofollow" href="{{ (page.cover.src || '#') }}">
              {{ ( page.cover.title || 'Imagem' ) }}
            </a>
          </p>
          {% endif %}
          <p>
            {{ __( 'social.share' ) }}:
            {{ partial( '_partial/social--twitter', { url: url, title: page.title } ) }}
            {{ partial( '_partial/social--facebook', { url: url } ) }}
          </p>
        </section>
      </div>
    </footer>
    
  </article>
</main>
