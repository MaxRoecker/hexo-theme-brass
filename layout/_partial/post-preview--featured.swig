<section class="postpreview--featured"
         {% if post.cover.path -%}
         style="background-image: url('{{ post.permalink }}{{ post.cover.path }}');
                background-size: cover;
                background-position: center;"
         {%- endif -%}>
  <div class="postpreview__cover--featured">
    <div class="container postpreview__container--featured">
      <header class="postpreview__header--featured">
        <h1 class="margin-zero">
          <a href="{{ url_for( post.path ) }}" class="postpreview__title--featured">
            {{ post.title }}
          </a>
        </h1>
      </header>
     <p class="postpreview__excerpt--featured">
       {% if post.description %}
         {{ post.description }}
       {% else %}
         {{ post.excerpt }}
       {% endif %}
     </p>
    </div>
  </div>
</section>
