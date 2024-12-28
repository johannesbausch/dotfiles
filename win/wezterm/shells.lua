local M = {}

M.default_prog = { -- Default program to run when starting WezTerm
	"wsl.exe",  -- Launch WSL (Windows Subsystem for Linux)
	"-d", "Debian", -- Use the Debian distribution
	"--cd", "~" -- Set the starting directory to home (~)
}

M.launch_menu = { -- Custom menu options for launching different sessions
	{
    label = "WSL Debian", -- Label for WSL Debian option
    args = {
			"wsl.exe",
      "-d", "Debian",
			"--cd", "~" -- Starts Debian in home directory
		}
  },
	{
		label = "CMD (privileged)", -- Label for privileged CMD session
		args = {
      "eledo",  -- Custom command to launch CMD as privileged
			"cmd.exe",
			"/K" -- Run CMD and keep it open
		}
	},
	{
		label = "PowerShell (privileged)", -- Label for privileged PowerShell session
		args = {
      "eledo",  -- Custom command to launch PowerShell as privileged
			"powershell.exe",
			"-NoLogo" -- Run PowerShell without the logo
		}
	},
  {
		label = "CMD", -- Label for standard CMD session
		args = {
			"cmd.exe",
			"/K" -- Run CMD and keep it open
		}
	},
	{
		label = "PowerShell", -- Label for standard PowerShell session
		args = {
			"powershell.exe",
			"-NoLogo" -- Run PowerShell without the logo
		}
	}
}

return M

