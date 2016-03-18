<main>
  {% if ( page.current === 1 ) %}
  <section>
    {% for post in site.posts %}
    <ul class="list--unstyled">
      {% if ( post.featured ) %}
      <li>
        {{
          partial(
            '_partial/post-preview--featured',
            { post: post }
          )
        }}
      </li>
      {% endif %}
    </ul>
    {% endfor %}
  </section>
  <div class="container text-align--center">
    <div class="continue">&#8250;</div>
  </div>
  
  {% else %}
    <header class="header">
      <div class="container">
        <h1 class="header__title">{{ __( 'index.recent_posts' ) }}</h1>
      </div>
    </header>
  {% endif %}
  <section>
    <div class="container">
      <ul class="postlist">
        {% for post in page.posts %}
          <li class="postlist__item">
            {{
              partial(
                '_partial/post-preview',
                { post: post }
              )
            }}
          </li>
        {% endfor %}
      </ul>
    </div>
  </section>
  
  <div class="container">
    {{ partial( '_partial/pagination', { page: page } ) }}
  </div>
  
</main>
