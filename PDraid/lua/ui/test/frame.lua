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
 
 
 local timer = vgui.Create("DLabel", panel)
 local TimeInSeconds = 350
 local TimeInMinutes = math.floor(TimeInSeconds/60)
 local remainder = TimeInSeconds % 60
 timer:SetText("00:00")
 timer:SetSize (5, 50)
 timer:SetPos(2, 1)
 timer:SetFont("PDraid.Header")
 timer:SizeToContentsX(120)
 timer:SetTextColor(PDraid.Theme.text.h2)
 timer:SetTextInset(32, 0)
 if (fill.DoClick) then
   timer.started
  if timer.started then
    for i =1, remainder do
	wait (1)
	if TimeInMinutes > 9 then
	 if remainder - i < 10 then
	    timer.Text = TimeInMinutes..":0"..remainder - i
	   else
	    timer.Text = TimeInMinutes..":"..remainder - i
       end
	else
	   if remainder - i < 10 then
	     timer.Text = "0"..TimeInMinutes..":0"..remainder - i
	  else
	     timer.Text = "0"..TimeInMinutes..":"..remainder - i
       end
	end
end	
    for i = 1, TimeInMinutes do
      for i = 1, 60 do
        wait(1)
        if TimeInMinutes > 9 then
           if 60 - i < 10 then
             timer.Text = TimeInMinutes..":".."0"..(60-i) 
			else
		     timer.Text = TimeInMinutes..":"..(60-i)
		   end
  else
      if 60 - i < 10 then
  	     timer.Text = "0"..TimeInMinutes..":0"..(60-i)
      else
	     timer.Text = "0"..TimeInMinutes..":"..(60-i)
	     end
	  end
   end
   TimeInMinutes = TimeInMinutes - 1
end
		 
 if (second.DoClick) then
  timer.cancel()
      end
     end
    end
   end 
  end
 end
concommand.Add("ui_frame", PDraid.Tests.Frame)
