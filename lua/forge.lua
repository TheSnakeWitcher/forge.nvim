local Terminal = require("toggleterm.terminal").Terminal

local forge = {}

local defaults = {
    direction = "float"
}

function forge.setup(options)

    forge.options = vim.tbl_deep_extend("force",defaults,options or {})

    vim.api.nvim_create_user_command("Forge",function(args)
        forge.exec(args.fargs)
    end, {
        desc = "execute a forge commands",
        nargs = "*",
    })

end

function forge.exec(args)
    Terminal:new({
        cmd = "forge" ,
        args = args,
        direction = forge.options.direction,
        close_on_exit = false,
    }):toggle()
end

return forge
