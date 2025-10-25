{inputs, ...}:
{
  users.users.sholto = {
    isNormalUser = true;
    description = "the seal was a lie!";
    extraGroups = ["networkmanager" "wheel"];
  };

}
