<main>
  <header class="header">
    <div class="container">
      <h1 class="header__title">
        {{ __( 'index.recent_posts') }}
        {{ __( 'tags.tagged_in') }}
        "{{ page.tag }}"
      </h1>
    </div>
  </header>
  <section>
    <div class="container">
      <ul class="postlist row">
        {% for post in page.posts %}
          <li class="postlist__item col-xs-12 col-sm-12 col-md-12 col-lg-12">
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
