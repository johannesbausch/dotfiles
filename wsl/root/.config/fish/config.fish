# Add /opt/nvim to the Fish shell path for accessing Neovim
fish_add_path /opt/nvim

# Check if FISH_INIT is not already set (indicating this is the first run)
if not set -q FISH_INIT
  # Mark FISH_INIT as set (to prevent re-running this block again in the future)
  set -x FISH_INIT 1

  # Set the TERM variable to "xterm-256color" for improved terminal compatibility
  set -x TERM xterm-256color

  # Set custom LS_COLORS for specific file types, e.g., .desktop files and directories
  set -x LS_COLORS "*.desktop=01;4:di=39;44"

  # Create an alias for `vi` to use Neovim (nvim) instead of the default editor
  alias vi="nvim"

  # Check if neofetch is installed, and if it is, display system information
  if type neofetch >/dev/null 2>&1
    echo  # Print an empty line
    neofetch  # Run neofetch to display system info
  end
end

# pnpm (Package Manager for Node.js)
# Set the location of the pnpm installation directory globally
set -gx PNPM_HOME "/root/.local/share/pnpm"

# Check if PNPM_HOME is already in the PATH variable, and if not, add it to the PATH
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH  # Prepend PNPM_HOME to the PATH
end

# End of pnpm configuration

