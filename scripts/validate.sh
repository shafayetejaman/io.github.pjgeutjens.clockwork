#!/usr/bin/env bash
set -euo pipefail

plugin_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
omarchy plugin validate "$plugin_dir"
qmllint -I "$OMARCHY_PATH/shell" \
  "$plugin_dir/TimerState.qml" \
  "$plugin_dir/BarWidget.qml" \
  "$plugin_dir/Panel.qml" \
  "$plugin_dir/TimeField.qml" \
  "$plugin_dir/CompactField.qml" \
  "$plugin_dir/FullscreenCountdown.qml"
