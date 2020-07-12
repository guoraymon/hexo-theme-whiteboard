<!-- 写成一行防止生成换行符 -->
{% macro render(tags) %}{% for tag in tags %}{% if loop.first %}{{ tag.name }}{% else %}, {{ tag.name }}{% endif %}{% endfor %}{% endmacro %}