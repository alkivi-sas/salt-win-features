{% macro win_feature(name, config={}, state='present') %}
win_feature_{{ name }}:
  win_servermanager.installed:
    - name: {{ name }}
    - force: {{ config.get('force', False) }}
    - recurse: {{ config.get('recurse', False) }}
{%- endmacro %}
