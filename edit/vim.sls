install_vim:
  pkg.installed:
  {% if grains.os_family == 'Debian' %}
    - name: vim
  {% else %}
    - name: vim-enhanced
  {% endif %}
