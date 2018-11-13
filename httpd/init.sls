install_httpd:
  pkg.installed:
    - name: httpd

start_httpd:
  service.running:
    - name: httpd
    - enabled: True
