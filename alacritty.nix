{
  enable = true;
  settings = {
    font =
      {
        normal = {
          family = "Fira Code";
        };
        bold = {
          family = "Fira Code";
          style = "Bold";
        };
        italic = {
          family = "Fira Code";
          style = "Italic";
        };
        size = 12.0;
      };

    colors = {
      # Default colors
      primary = {
        background = "0x282c34";
        foreground = "0xabb2bf";
      };

      # Colors the cursor will use if `custom_cursor_colors` is true
      cursor = {
        text = "0x282c34";
        cursor = "0x528bff";
      };

      # Normal colors
      normal = {
        black = "0x333333";
        red = "0xe06c75";
        green = "0x98c379";
        yellow = "0xe5c07b";
        blue = "0x61afef";
        magenta = "0xc678dd";
        cyan = "0x56b6c2";
        white = "0x526370";
      };

      # Bright colors
      bright = {
        black = "0x333333";
        red = "0xe06c75";
        green = "0x98c379";
        yellow = "0xe5c07b";
        blue = "0x61afef";
        magenta = "0xc678dd";
        cyan = "0x56b6c2";
        white = "0x526370";
      };
    };
    window = {
      padding = {
        x = 20;
        y = 10;
      };
      decoration = "none";
    };
  };
}
