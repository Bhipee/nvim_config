return {
  "kawre/leetcode.nvim",
  opts = {
    cn = { -- leetcode.cn
      enabled = true, ---@type boolean
      translator = true, ---@type boolean
      translate_problems = true, ---@type boolean
    },
    injector = { ---@type table<lc.lang, lc.inject>
      ["python3"] = {
        before = true,
      },
      ["cpp"] = {
        before = { "#include <bits/stdc++.h>", "using namespace std;" },
        after = "int main() {}",
      },
      ["java"] = {
        before = "import java.util.*;",
      },
    },
  },
}
