return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "adrigzr/neotest-mocha",
    },
    opts = {
      adapters = {
        ['neotest-mocha'] = {
          command = "npm exec mocha --",
          command_args = function(context)
            -- The context contains:
            --   results_path: The file that json results are written to
            --   test_name_pattern: The generated pattern for the test
            --   path: The path to the test file
            --
            -- It should return a string array of arguments
            --
            -- Not specifying 'command_args' will use the defaults below
            return {
              "--full-trace",
              "--reporter=json",
              "--reporter-options=output=" .. context.results_path,
              "--grep=" .. context.test_name_pattern,
              "--slow=8000",
              context.path,
            }
          end,
          env = {
            GRIST_SESSION_COOKIE="grist_test_cookie",
            GRIST_TEST_LOGIN="1",
            TEST_SUPPORT_API_KEY="api_key_for_support",
            TEST_CLEAN_DATABASE="true",
            LANGUAGE="en_US"
          },
        },
      },
    },
  },
};
