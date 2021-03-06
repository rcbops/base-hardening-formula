include:
  - base-hardening-formula.firewall-base

software-requirements:
  pkg.installed:
    - pkgs:
      - fail2ban 
      - psad
      - aide
      - logwatch

/etc/cron.daily/00logwatch:
  file:
    - managed
    - template: jinja
    - source: salt://base-hardening-formula/cron.daily/00logwatch
    - require:
      - pkg: software-requirements
