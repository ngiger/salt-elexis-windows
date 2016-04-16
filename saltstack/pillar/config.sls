elexis_installation:
  - variant: prerelease
{% if grains['os'] == 'Windows' %}
    download_uri: https://download.elexis.info/elexis.3.core/3.1.0-prerelease/products/ch.elexis.core.application.ElexisApp-win32.win32.x86.zip
    hash: sha256=e236fde6bcff5c820ea2d85b79282032cd3f6b87b3e6ad5601f4bde703f9f0f1
    inst_path: C:/elexis-3.1-prerelease
{% endif %}
