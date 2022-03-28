local surface_SetDrawColor = surface.SetDrawColor
local surface_DrawTexturedRect = surface.DrawTexturedRect
local surface_DrawRect = surface.DrawRect
local surface_SetMaterial = surface.SetMaterial

local gU = Material("vgui/gradient_up")
local gD = Material("vgui/gradient_down")
local gR = Material("vgui/gradient-r")
local gL = Material("vgui/gradient-l")

local function GDN(mat, x, y, w, h, col)
    surface_SetDrawColor(col)
    surface_DrawRect(x,y,w,h)
    surface_SetMaterial(mat)
    if mat == gU then
        mat = gU
    elseif mat == gD then
        mat = gD 
    elseif mat == gR then
        mat = gR
    elseif mat == gL then
        mat = gL
    end
    surface_SetDrawColor(col.r - 45,col.g - 45,col.b - 45)
    surface_DrawTexturedRect(x,y,w,h)
end
