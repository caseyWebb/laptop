{ pkgs }: {
  enable = true;
  plugins = [
    {
      name = "z";
      src = pkgs.fetchFromGitHub {
        owner = "jethrokuan";
        repo = "z";
        rev = "85f863f20f24faf675827fb00f3a4e15c7838d76";
        sha256 = "+FUBM7CodtZrYKqU542fQD+ZDGrd2438trKM0tIESs0=";
      };
    }
    {
      name = "done";
      src = pkgs.fetchFromGitHub {
        owner = "franciscolourenco";
        repo = "done";
        rev = "d6abb267bb3fb7e987a9352bc43dcdb67bac9f06";
        sha256 = "6oeyN9ngXWvps1c5QAUjlyPDQwRWAoxBiVTNmZ4sG8E=";
      };
    }
    {
      name = "pisces";
      src = pkgs.fetchFromGitHub {
        owner = "laughedelic";
        repo = "pisces";
        rev = "e45e0869855d089ba1e628b6248434b2dfa709c4";
        sha256 = "Oou2IeNNAqR00ZT3bss/DbhrJjGeMsn9dBBYhgdafBw=";

      };
    }
  ];
}
