<main>
  <article class="post">
    <header>
      <div class="post__header"
           {% if page.cover %}
           style="background-image: url('index/{{ page.cover }}');
                  background-size: cover;
                  background-position: center;"{% endif %}>
        <div class="post__cover">
          <div class="container">
            <h1 class="post__title">{{ page.title }}</h1>
          </div>
        </div>
      </div>
    </header>
    
    <section class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 post__content">
          {{ page.content }}
        </div>
      </div>
    </section>
    
  </article>
</main>
