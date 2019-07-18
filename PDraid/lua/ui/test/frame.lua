local PANEL = {}

function PANEL:Init()
 self.navbar = self:Add("PDraid.Navbar")
 self.navbar:Dock(TOP)
 self.navbar:AddTab("Button")
end

function PANEL:PerformLayout(w, h)
 self.BaseClass.PerformLayout(self, w, h)
 
 self.navbar:SetTall(PDraid.UIsizes.navbar.height)
end

vgui.Register("PDraid.Menu", PANEL, "PDraid.Frame")

PDraid.Tests.Frame = function()
 local frame = vgui.Create("PDraid.Frame")
 frame:SetSize(330, 300)
 frame:Center()
 frame:MakePopup()
 frame:SetTitle("Civil Gamers - PD Raiding System")
 
 local panel = vgui.Create ("DPanel", frame)
  panel:SetSize(200, 0)
  panel:Dock(FILL)

 local lab = vgui.Create("DLabel", panel)
  lab:SetSize(30, 30)
  lab:SetPos(3, 1)
  lab:SetText("Timer Countdown")
  lab:SetFont("PDraid.Header")
  lab:SizeToContentsX(120)
  lab:SetTextColor(PDraid.Theme.text.h2)
  lab:SetTextInset(32, 0)
  
 

local fill = vgui.Create( "DButton", panel)
 fill:SetText("Start PD Raid")
 fill:SetSize(5, 50)
 fill:SetPos(48, 100)
 fill:SetFont("PDraid.Header")
 fill:SizeToContentsX(120)
 fill:SetTextColor(PDraid.Theme.text.h2)
 fill:SetTextInset(32, 0)
 fill.DoClick = function ()
    print ("/advert PD Raid has been started!")
 fill:Remove()
 
 
 local second = vgui.Create( "DButton", panel)
 second:SetText("End PD Raid")
 second:SetSize(5, 50)
 second:SetPos(48, 200)
 second:SetFont("PDraid.Header")
 second:SizeToContentsX(120)
 second:SetTextColor(PDraid.Theme.text.h2)
 second:SetTextInset(32, 0)
 second.DoClick = function ()
   print("/advert PD Raid has beed ended!")
 second:Remove()

 
  end
 end
end 
concommand.Add("ui_frame", PDraid.Tests.Frame)
 