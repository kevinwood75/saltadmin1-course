base:
  '20181112-vilt-admin-i-lab11-uarchive,20181112-vilt-admin-i-lab11-cweb':
    - match: list
    - edit.vim
  '*web*':
    - httpd
    - python
    - python.python-lxml
    - firewalld
  '*redis*':
    - redis
  '*archive*':
    - archive
  'os_family:RedHat':
    - match: grain
    - edit.nano
