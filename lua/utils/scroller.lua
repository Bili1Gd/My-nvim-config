if true then return {} end --not ready yet
local cache = vim.fs.joinpath(vim.fn.stdpath "state" --[[@as string]], "last_colorscheme")

--- Execute function with open file
---@param file string path to file to interact with
---@param mode openmode the mode in which to open the file
---@param callback fun(fd:file*) the callback to execute with the opened file
---@param on_error? fun(err:string) the callback to execute if unable to open the file
local function with_file(file, mode, callback, on_error)
  local fd, errmsg = io.open(file, mode)
  if fd then
    callback(fd)
    fd:close()
  elseif errmsg and on_error then
    on_error(errmsg)
  end
end

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      autocmds = {
        -- save colorscheme to cache on change
        cache_colorscheme = {
          {
            event = "ColorScheme",
            callback = function(args)
              if args.match then with_file(cache, "w+", function(file) file:write(args.match) end) end
            end,
          },
        },
      },
    },
  },
}
