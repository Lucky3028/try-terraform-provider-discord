terraform {
  required_providers {
    discord = {
      source  = "Lucky3028/discord"
      version = "1.1.0"
    }
  }

  cloud {
    organization = "lucky3028"

    workspaces {
      name = "Kagerou"
    }
  }
}

provider "discord" {
  token = var.discord_bot_token
}
