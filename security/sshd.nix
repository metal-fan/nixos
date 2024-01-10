{ config, pkgs, username, ... }:

{
  # Enable incoming ssh
  services.openssh = {
    enable = true;
    openFirewall = true;
    settings = {
      PasswordAuthentication = false;
      PermitRootLogin = "no";
    };
  };
  users.users.${username}.openssh.authorizedKeys.keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDXpecYqaQEK2DToZYe/ypCZRM64x+Kdpk3nFyt33Kz0g6jAlfc6Dk3wDGgLEa4pGxgntYEuY21RXMwwlwzT7RByS5mY8edKYSBDcztZUpZC943XRXONnqg1lPHzNYR2u+ojoJooeDMkxpleHRPk8Lhko+skBiR3EUw+IZHcj7C079cWKh9yf33lNPnuATHVRgWdP7TJmHdxeotz6xmQNekGsnpW/cbAbCf+WFNmZ4DfTMO86RMC57211ChJNvNJ1W7TAJIGrD0PtC8hBs4tvrh5heTvl0zGLNVDPaW8h99/XSgatveaAl+PHkhc3wA6wWX14L2R4NX+m2HgF2xajt7lQio0/gnhKaXi/YIZuuqdFTPI8OTW9/29JFUV3xxPE7OWechigyRTuffj4KK1r2wsB6r2PR1cqnhNNVgLFZbr/pN9I/5oC3pEYq1D4n/p6ukNn/poWlqsuNxEvNRMrovraeHxAv5o+q8EoBwbgbLlgela5gqnbTFqVvZJxvxYNaRMwz+wRT0ULLaKz5DRDE9R/aZfCSjml3wyx0Oe6ioPQ4qDQT0ZfIDDVvxV83ELx3gazpuRwnpBOff8A72XiJWkHXffUNOmoLsLhRa5/Gh6IrHo5kkfpBtp+pDHxKxP8620i747T7HlGjBWxC8OdP6MTgWScnWCuJ4NwW1RldxlQ== sylvain@Maison"
    ];
}
