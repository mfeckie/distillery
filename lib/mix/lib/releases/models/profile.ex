defmodule Mix.Releases.Profile do
  @moduledoc """
  Represents the configuration profile for a specific environment and release.
  More generally, a release has a profile, as does an environment, and
  when determining the configuration for a release in a given environment, the
  environment profile overrides the release profile.
  """
  defstruct vm_args: nil, # path to a custom vm.args
    sys_config: nil, # path to a custom sys.config
    code_paths: nil, # list of additional code paths to search
    erl_opts: nil, # string to be passed to erl
    dev_mode: nil, # boolean
    include_erts: nil, # boolean | "path/to/erts"
    include_src: nil, # boolean
    include_system_libs: nil, # boolean | "path/to/libs"
    strip_debug_info: nil, # boolean
    overlay_vars: nil, # keyword list
    overlays: nil, # overlay list
    overrides: nil, # override list [app: app_path]
    commands: nil, # keyword list
    pre_start_hook: nil, # path or nil
    post_start_hook: nil, # path or nil
    pre_stop_hook: nil, # path or nil
    post_stop_hook: nil # path or nil

end
