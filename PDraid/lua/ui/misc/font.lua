function PDraid:CreateFont(name, size, weight)
 surface.CreateFont("PDraid.".. name,{
  font = "Arial", -- Hydro or Ventz you can change the font to whatever you want I liked this one but its up to you.
  size = size or 14,
  weight = weight or 500
  })
 end
 