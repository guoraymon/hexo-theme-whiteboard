<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>{% block title %}{{ config.title }}{% endblock %}</title>
    <meta name="keywords" content="{% block keywords %}{{ config.keywords }}{% endblock %}">
    <meta name="description" content="{% block description %}{{ config.description }}{% endblock %}">

    {{ css('css/style.css') }}
    {% block css %}{% endblock %}
</head>
<body>
    <header>
        <a class="site-name" href="/">{{ config.title }}</a>
        <nav class="navbar">
            <!-- <a href="about">关于</a> -->
            <!-- <a href="archives">归档</a> -->
            <!-- <a href="tags">标签</a> -->
            <a href="https://weibo.com/raymonguo" target="_blank">微博</a>
        </nav>
    </header>
    <main>
        <div class="spacer"></div>
        <div class="container">
            {% block content %}{% endblock %}
        </div>
    </main>
    <footer>
        <p>Copyright©{{ date(Date.now(), "Y") }}</p>
        <p>
            Powered by <a href="https://hexo.io/">Hexo</a> |
            Open Source on <a href="https://github.com/guoraymon/hexo-theme-whiteboard/">Github</a> |
            100% <a href="https://www.swiftbysundell.com/special/javascript-free/">JavaScript-free</a>
        </p>
    </footer>
</body>
</html>