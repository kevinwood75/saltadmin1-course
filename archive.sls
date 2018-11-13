install_archive_pkgs:
  pkg.installed:
    - names:
      - rsync
      - sharutils
      - vsftpd

start_vsftpd:
  service.running:
    - name: vsftpd
    - enable: True
