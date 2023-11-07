local lastLog = ""
RegisterHook("/Script/Starbreeze.SBZCodeViewerInterface:UpdateCodeViewer", function(self, GeneratedCodes, TrueCodeIndex)
    local log = string.format("%04d", GeneratedCodes:get()[TrueCodeIndex:get() + 1])
    if (log ~= lastLog) then
        print("\nDOOR/VAULT CODE: ".. log .. "\n\n")
        lastLog = log
    end
end)