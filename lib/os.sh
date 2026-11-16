#!/usr/bin/env bash
# Platform detection shared by bootstrap.sh and stow.sh.
# Prints one of: macos | arch | <os-release ID> | linux | unknown

detect_os() {
  case "$(uname -s)" in
    Darwin)
      echo macos
      ;;
    Linux)
      if [[ -r /etc/os-release ]]; then
        (
          # shellcheck disable=SC1091
          . /etc/os-release
          if [[ "${ID:-}" == arch || " ${ID_LIKE:-} " == *" arch "* ]]; then
            echo arch
          else
            echo "${ID:-linux}"
          fi
        )
      else
        echo linux
      fi
      ;;
    *)
      echo unknown
      ;;
  esac
}
