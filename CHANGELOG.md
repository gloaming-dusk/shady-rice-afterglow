# Changelog

## Unreleased

- Afterglow has its own repository, moved out of
  [Shady](https://github.com/gloaming-dusk/shady) with its history, and with
  its login screen for [shady-greeter](https://github.com/gloaming-dusk/shady-greeter)
  in `greeter/`. Its sky plugin stays in Shady.
- A Nix package (`share/shady/rices/afterglow`) and `install.sh`
  (`~/.local/share/shady/rices/afterglow`), so `SHADY_RICE=afterglow` keeps
  working.
- `run.sh`, `run-native.sh`, `capture.sh` and the tests find Shady in
  `SHADY_ROOT` (`../shady` by default) and the shell in `SHADY_SHELL_BIN`.
