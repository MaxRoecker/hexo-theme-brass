<nav class="pagination" role="navigation">
  <div class="row center-xs middle-xs">
    <div class="col-xs-12 col-sm-3 col-md-2">
      {% if page.prev %}
      <a href="{{ url_for( page.prev_link ) }}">
        ← {{ __( 'pagination.newer' ) }}
      </a>
      {% endif %}
    </div>
    <div class="col-xs-12 col-sm-3 col-md-2">
      <span class="pagination__current">{{ _p( 'pagination.page_n', page.current ) }}</span>
    </div>
    <div class="col-xs-12 col-sm-3 col-md-2">
      {% if page.next %}
      <a href="{{ url_for( page.next_link ) }}">
        {{ __( 'pagination.older' ) }} →
      </a>
      {% endif %}
    </div>
  </div>
</nav>
