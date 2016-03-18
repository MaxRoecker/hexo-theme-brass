<header id="header">
      <div class="container">
        <div class="row left-xs middle-xs">
          <div class="col-xs-12 col-md-3">
            <h1 class="sitename">
              <a href="/" class="text-decoration--none display--block">
                {% if site.data.meta.site.logo %}
                <img src="{{ site.data.meta.site.logo }}" alt="Site Logo" />
                {% else %}
                {{ config.title }}
                {% endif %}
              </a>
            </h1>
          </div>
          <div class="col-xs-10 col-xs-offset-1
                      col-sm-8 col-sm-offset-2
                      col-md-6 col-md-offset-3
                      col-lg-6 col-lg-offset-3">
            {% if site.data.meta.site.menu %}
            <nav id="navigation-main">
              <ul class="navigation row
                         between-xs middle-xs center-xs
                         between-md end-md">
              {% for item in site.data.meta.site.menu %}
              {% if ( url.indexOf( item ) >= 0 ) %}
                <li class="navigation__item--selected">
                  <a href="#" class="navigation__item__link">
                    {{ loop.key }}
                  </a>
                </li>
              {% else %}
                <li class="navigation__item">
                  <a href="{{ item }}" class="navigation__item__link">
                    {{ loop.key }}
                  </a>
                </li>
              {% endif %}
              {% endfor %}
              </ul>
            </nav>
            {% endif %}
          </div>
        </div>
      </div>
    </header>
