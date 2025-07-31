return {
  "nvim-java/nvim-java",
  config = false,
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          -- Your JDTLS configuration goes here
          jdtls = {
            settings = {
              java = {
                configuration = {
                  runtimes = {
                    {
                      name = "Corretto-17",
                      path = "~/.sdkman/candidates/java/17.0.15-amzn",
                    },
                    {
                      name = "Corretto-21",
                      path = "~/.sdkman/candidates/java/21.0.7-amzn",
                    },
                    {
                      name = "Graalvm-21",
                      path = "~/.sdkman/candidates/java/21.0.2-graalce",
                    },
                  },
                },
              },
            },
          },
        },
        setup = {
          jdtls = function()
            -- Your nvim-java configuration goes here
            require("java").setup({
              root_markers = {
                "settings.gradle",
                "settings.gradle.kts",
                "pom.xml",
                "build.gradle",
                "mvnw",
                "gradlew",
                "build.gradle",
                "build.gradle.kts",
              },
            })
          end,
        },
      },
    },
  },
}
