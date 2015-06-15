<div class="copyright">
  {% set current = date(Date.now(), "YYYY") %}
  &copy; &nbsp; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  {{ current }}
  <span class="with-love">
    <i class="icon-heart"></i>
  </span>
  <span class="author">{{ config.author }}</span>
</div>

<div class="powered-by">
  {{ __('footer.powered', '<a class="theme-link" href="http://hexo.io">Hexo</a>') }}
</div>

<div class="theme-info">
  {{ __('footer.theme') }} -
  <a class="theme-link" href="https://github.com/iissnan/hexo-theme-next">
    NexT{% if theme.scheme %}.{{ theme.scheme }}{% endif %}
  </a>
</div>

<script>
    (function(){
        if (!window.addEventListener) return;
        window.addEventListener('load', function(){
            var performance = window.performance;
            if (performance === undefined) return;
            timing = window.performance.timing;
            if (timing === undefined) return;

            if (document.cookie.indexOf('statistics_clientid=') != -1) return;

            var domain_lookup_time = timing.domainLookupEnd - timing.domainLookupStart;
            var connect_time = timing.connectEnd - timing.connectStart;
            var read_content_time = timing.responseEnd - timing.responseStart;

            new Image().src = ('https:' == document.location.protocol ? 'https://' : 'http://')
                + 'stat.dnspod.cn/statistics/'
                + domain_lookup_time + "/"
                + connect_time + "/"
                + read_content_time + ".png";

            var exdate=new Date();
            exdate.setDate(exdate.getDate() + 1);
            document.cookie="statistics_clientid=me"
            + ";expires="+exdate.toGMTString();

        }, false);
    }());
</script>

{% block footer %}{% endblock %}
