{% set users = {'tom': 2000, 'jeff': 2001, 'seth': 2002} %}

{% for user in users %}
{{ user }}:
  user.present:
    - uid: {{ users[user] }}
{% endfor %}
