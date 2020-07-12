{% extends "_layout.swig" %}
{% import '_macro/tag_names.swig' as tag_names %}

{% block css %}
    {{ css('css/post.css') }}
{% endblock %}

{% block title %}{{ page.title }} - {{ config.title }}{% endblock %}
{% block keywords %}{{ page.keywords }}{% endblock %}
{% block description %}{{ page.description }}{% endblock %}

{% block content %}
    <article>
        <h1 class="title">{{ page.title }}</h1>
        {{ page.content }}
    </article>
{% endblock %}
