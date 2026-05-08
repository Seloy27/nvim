
require('color-converter').setup({
      round_hsl = true, -- rounds saturation and light when generating HSL colors.
  lowercase_hex = false, -- by default HEX colors will be uppercased.
  hsl_pattern = "hsl([h]deg, [s], [l])",
  hsla_pattern = "hsl([h]deg, [s], [l], / [a]%)",
  rgb_pattern = "rgb([r], [g], [b])",
  rgba_pattern = "rgb([r], [g], [b], / [a]%)",
})

function ToHex()
    require('color-converter').to_hex()
end
function ToRgb()
    require('color-converter').to_rgb()
end
function ToHsl()
    require('color-converter').to_hsl()
end
