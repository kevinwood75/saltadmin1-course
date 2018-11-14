include:
  - apachetop

{% import_yaml "httpd/map.yaml" as osmap %}
{% set apache = salt['grains.filter_by'](osmap) %}

install_httpd:
  pkg.installed:
    - name: {{apache.name}}

start_httpd:
  service.running:
    - name: {{apache.name}}
    - enable: true
    - require:
      - pkg: install_httpd
    - watch:
      - file: httpd_conf

httpd_conf:
  file.managed:
    - name: {{apache.httpfile}}
    - source: {{apache.source_httpfile}}
    - user: root
    - group: root
    - mode: 644 
