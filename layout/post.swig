{% extends "_layout.swig" %}
{% import '_macro/tag_names.swig' as tag_names %}

{% block css %}
    {{ css('css/post.css') }}
{% endblock %}

{% block title %}{{ page.title }} - {{ config.title }}{% endblock %}
{% block keywords %}{{ tag_names.render(page.tags) }}{% endblock %}
{% block description %}{{ page.abstract }}{% endblock %}

{% block content %}
    <article>
        <h1>{{ page.title }}</h1>
        {{ page.content }}
    </article>
{% endblock %}
