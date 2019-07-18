local PANEL ={}

local matCloseBtn = Material("xenin/closebutton.png")


PDraid:CreateFont("Header", 22)

function PANEL:Init()
 self.header = self:Add("Panel")
 self.header:Dock (TOP)
 self.header.Paint = function (pnl, w, h)
  draw.RoundedBoxEx(1, 0, 0, w, h, PDraid.Theme.primary, true, true, false, false)
 end
 
 
 self.header.closeBtn = self.header:Add("DButton")
 self.header.closeBtn:Dock(TOP)
 self.header.closeBtn:SetText("Close")
 self.header.closeBtn.DoClick = function(pnl)
  self:Remove()
 end 
 
 self.header.closeBtn.margin = 16
 self.header.closeBtn.Paint = function (pnl, w, h)
  local margin = pnl.margin
 
  surface.SetDrawColor(PDraid.Theme.closeBtn)
  surface.SetMaterial(matCloseBtn)
  surface.DrawTexturedRect(margin, margin, w - (margin * 1), h - (margin * 100))
 end

 self.header.title = self.header:Add("DLabel")
 self.header.title:Dock(TOP)
 self.header.title:SetFont("PDraid.Header")
 self.header.title:SetTextColor(PDraid.Theme.text.hl)
 self.header.title:SetTextInset(16, 0)
end 
 
 function PANEL:SetTitle(text)
  self.header.title:SetText(text)
  self.header.title:SizeToContents()
 end
 
 function PANEL:SetText(text)
  self.header.text:SetText(text)
  self.header.text:SizeToContents()
 end
 
 function PANEL:PerformLayout(w, h)
  self.header:SetTall(PDraid.UIsizes.header.height)
  self.header.closeBtn:SetWide(self.header:GetTall())
 end
 
 vgui.Register("PDraid.Frame", PANEL, "EditablePanel")
 