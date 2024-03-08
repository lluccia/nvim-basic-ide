local sdk_java_dir = "~/.sdkman/candidates/java"

local M = {}

-- find latest version for each major
M.java_versions = {}
for name, type in vim.fs.dir( sdk_java_dir ) do
    if type == "directory" then
        local java_version = vim.version.parse(name)

        java_version.path = vim.fs.normalize( sdk_java_dir .. "/" .. name )
        if not M.java_versions[java_version.major]
                or vim.version.gt(java_version, M.java_versions[java_version.major]) then
            M.java_versions[java_version.major] = java_version
        end
    end
end

-- build jdt runtimes table
M.runtimes = {}
for _, v in pairs(M.java_versions) do
    table.insert(M.runtimes, {
        name = "JavaSE-" .. (v.major < 9 and '1.' or '') .. v.major,
        path = v.path
    })
end

return M
