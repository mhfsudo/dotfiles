-- Load alpha plugin (https://github.com/goolord/alpha-nvim)

return {
	"goolord/alpha-nvim",
	config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[                                                    ]],
      [[              ██  ██ ██  ██ ██████        ]],
      [[             ████████ ██  ██ ██             ]],
      [[            ███████ ████████ █████           ]],
      [[           ██  ██ ██  ██ ██		            ]],
      [[          ██  ██ ██  ██ ██ 		            ]],
      [[                                                    ]],
      [[                       Good                         ]],
      [[                                 __                 ]],
      [[    ___     ___    ___   __  __ /\_\    ___ ___     ]],
      [[   / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\   ]],
      [[  /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \  ]],
      [[  \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\ ]],
      [[   \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/ ]],
    }

    alpha.setup(dashboard.opts)
	end,
}
