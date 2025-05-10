local pastebinURL = "https://raw.githubusercontent.com/JHoang-minecraft/Test/main/startup.lua"
local fileName = "startup.lua"

print("Downloading file from " .. pastebinURL)
local success, result = pcall(function() 
    wget(pastebinURL, fileName)
end)

if success then
    print("Download complete!")
else
    print("Error downloading file: " .. result)
end

if fs.exists(fileName) then
    print("File successfully downloaded. Executing script...")
    shell.run(fileName)  
else
    print("Failed to download the file.")
end


