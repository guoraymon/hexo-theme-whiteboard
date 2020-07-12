{% extends "_layout.swig" %}
{% import '_macro/tag_names.swig' as tag_names %}

{% block css %}
    {{ css('css/index.css') }}
{% endblock %}

{% block content %}
    {% for post in page.posts %}
        <article class="post">
            <h1 class="post-title">
                <a href="{{ url_for(post.path) }}">{{ post.title }}</a>
            </h1>
            <span class="post-date">发布日期：{{ date(post.date) }}</span>
            <span class="post-tags">标签：{{ tag_names.render(post.tags) }}</span>
            <p>{{ post.abstract }}</p>
            <a href="{{ url_for(post.path) }}">阅读全文</a>
        </article>
    {% endfor %}
{% endblock %}
