terraform {
  required_providers {
    discord = {
      source  = "Lucky3028/discord"
      version = "1.1.1"
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

variable "discord_bot_token" {
  type        = string
  description = "Token of the discord bot."
  sensitive   = true
}

resource "discord_server" "server" {
  name                          = "Kagerou"
  region                        = "japan"
  default_message_notifications = 1
  explicit_content_filter       = 2
  verification_level            = 4
  icon_url                      = "https://github.com/Lucky3028/try-terraform-provider-discord/blob/main/server_icon.jpeg?raw=true"
}
