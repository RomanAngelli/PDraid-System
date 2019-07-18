local PANEL = {}

function PANEL:Init()
 self.header = self:Add("Panel")
 self.header:Dock (LEFT)
 self.header.Paint = function (pnl, w, h)
  draw.RoundedBoxEx(1, 0, 0, w, h, PDraid.Theme.primary, true, true, false, false)
 end
 
local panel = vgui.Create ("DPanel", frame)
panel:SetSize(50, 50)
panel:Dock(LEFT)

end 
 vgui.Register("PDraid.Squad", PANEL, "EditablePanel")