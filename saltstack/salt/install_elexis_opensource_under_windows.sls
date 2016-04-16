{% for elexis_install in  pillar.get('elexis_installation', []) %}
{{elexis_install.inst_path}}:
  archive.extracted:
    - if_missing: {{elexis_install.inst_path}}/Elexis3
    - name: {{elexis_install.inst_path}}
    - source: {{elexis_install.download_uri}}
    - source_hash: {{elexis_install.hash}}
    - archive_format: zip
{% endfor %}
