<main>
  <header class="header">
    <div class="container">
      <h1 class="header__title">
        {{ __( 'archive.archive' ) }}
        {% if page.year %}
        — {% if page.month %}
        {{ page.month }}/{{ page.year }}
        {% else %}
        {{ page.year }}
        {% endif %}
        {% endif %}
      </h1>
    </div>
  </header>
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
