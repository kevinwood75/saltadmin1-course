{% set users = {'tom': 2000, 'jeff': 2001, 'seth': 2002} %}

{% for user in pillar['users'] %}
{{ user }}:
  user.present:
    - uid: {{ pillar['users'][user] }}
{% endfor %}
