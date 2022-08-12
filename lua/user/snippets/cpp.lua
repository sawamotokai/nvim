local ls = require("luasnip")

-- dap.adapters.lldb = {
--   type = 'executable',
--   command = '/usr/local/opt/llvm@9/bin/lldb-vscode', -- adjust as needed, must be absolute path
--   name = 'lldb'
-- }
--
-- dap.configurations.cpp = {
--   {
--     name = 'Launch',
--     type = 'lldb',
--     request = 'launch',
--     program = function()
--       return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--     end,
--     cwd = '${workspaceFolder}',
--     stopOnEntry = true,
--     args = {},
--     env = function()
--       local variables = {}
--       for k, v in pairs(vim.fn.environ()) do
--         table.insert(variables, string.format("%s=%s", k, v))
--       end
--       return variables
--     end,
--     -- 💀
--     -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
--     --
--     --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
--     --
--     -- Otherwise you might get the following error:
--     --
--     --    Error on launch: Failed to attach to the target process
--     --
--     -- But you should be aware of the implications:
--     -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
--     -- runInTerminal = false,
--   },
-- }
-- If you want to use this for Rust and C, add something like this:
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node

ls.add_snippets("cpp", {
  s("fn", {
		-- Simple static text.
		t("//Parameters: "),
		-- function, first parameter is the function, second the Placeholders
		-- whose text it gets as input.
		t({ "", "function " }),
		-- Placeholder/Insert.
		i(1),
		t("("),
		-- Placeholder with initial text.
		i(2, "int foo"),
		-- Linebreak
		t({ ") {", "\t" }),
		-- Last Placeholder, exit Point of the snippet.
		i(0),
		t({ "", "}" }),
	}),
  s("cp", {
    t({"#include <bits/stdc++.h>", ""}),
    t({"#include <cassert>", ""}),
    t({"#define rep(i, N) for (int i = 0; i < (N); ++i)", ""}),
    t({"#define rep2(i, a, b) for (ll i = a; i <= b; ++i)", ""}),
    t({"#define rep3(i, a, b) for (ll i = a; i >= b; --i)", ""}),
    t({"#define pb push_back", ""}),
    t({"#define eb emplace_back", ""}),
    t({"#define fi first", ""}),
    t({"#define se second", ""}),
    t({"#define nl '\\n'", ""}),
    t({"#define endl '\\n'", ""}),
    t({"#define all(c) begin(c), end(c)", ""}),
    t({"#define ok() puts(ok ? \"Yes\" : \"No\");", ""}),
    t({"#define pcnt(x) __builtin_popcountll(x)", ""}),
    t({"#define df(x) ll x = in();", ""}),
    t({"template <class T> bool chmax(T &a, const T &b) {", ""}),
    t({"\tif (a < b) {", ""}),
    t({"\ta = b;", ""}),
    t({"\t\treturn true;", ""}),
    t({"\t}", ""}),
    t({"\treturn false;", ""}),
    t({"}", ""}),
    t({"template <class T> bool chmin(T &a, const T &b) {", ""}),
    t({"\tif (a > b) {", ""}),
    t({"\t\ta = b;", ""}),
    t({"\t\treturn true;", ""}),
    t({"\t}", ""}),
    t({"\treturn false;", ""}),
    t({"}", ""}),
    t({"using namespace std;", ""}),
    t({"using ll = long long;", ""}),
    t({"using vi = vector<int>;", ""}),
    t({"using vll = vector<ll>;", ""}),
    t({"using vvll = vector<vll>;", ""}),
    t({"using ii = pair<int, int>;", ""}),
    t({"using vvi = vector<vi>;", ""}),
    t({"using vvll = vector<vll>;", ""}),
    t({"using vii = vector<ii>;", ""}),
    t({"using vs = vector<string>;", ""}),
    t({"using P = pair<ll, ll>;", ""}),
    t({"using gt = greater<P>;", ""}),
    t({"template <class T> using minq = priority_queue<T, vector<T>, greater<T>>;", ""}),
    t({"using vP = vector<P>;", ""}),
    t({"inline ll in() {", ""}),
    t({"\tll x;", ""}),
    t({"\tscanf(\"%lld\", &x);", ""}),
    t({"\treturn x;", ""}),
    t({"}", ""}),
    t({"template <class T> void takeUnique(vector<T> &v) {", ""}),
    t({"\tv.erase(v.begin(), v.end());", ""}),
    t({"\tauto last = std::unique(v.begin(), v.end());", ""}),
    t({"}", ""}),
    t({"template <class T> void print(const initializer_list<T> &il) {", ""}),
    t({"\tfor (auto x : il) {", ""}),
    t({"\t\tcout << x << \" \";", ""}),
    t({"\t}", ""}),
    t({"cout << \"\\n\";", ""}),
    t({"}", ""}),
    t({"inline void priv(vll a) {", ""}),
    t({"\trep(i, (int)a.size() - 1) cout << a[i] << \" \";", ""}),
    t({"\tcout << a.back() << nl;", ""}),
    t({"}", ""}),
    t({"inline void priv(vi a) {", ""}),
    t({"\trep(i, (int)a.size() - 1) cout << a[i] << \" \";", ""}),
    t({"\tcout << a.back() << nl;", ""}),
    t({"}", ""}),
    t({"const ll LINF = 2e18L + 1;", ""}),
    t({"const int INF = 2e9 + 1;", ""}),
    t({"int DX[] = {0, 1, 0, -1};", ""}),
    t({"int DY[] = {1, 0, -1, 0};", ""}),
    t({"int DXX[] = {0, 1, 1, 1, 0, -1, -1, -1};", ""}),
    t({"int DYY[] = {1, 1, 0, -1, -1, -1, 0, 1};", ""}),
    t({"// g++ -std=c++17 -stdlib=libc++", ""}),
    t({"// #define _GLIBCXX_DEBUG", ""}),
    t({"// This slows down the execution; even the time complexity, since it checks if std funcs such as lower_bound meets prereqs", ""}),
    t({"", ""}),
    t({"void _main() {", "\t"}),
    i(0),
    t({"", "}", ""}),
    t({"", ""}),
    t({"int main() {", ""}),
    t({"\tios::sync_with_stdio(false);", ""}),
    t({"\tcin.tie(NULL);", ""}),
    t({"\tcout << fixed << setprecision(16);", ""}),
    t({"\tint t = 1;", ""}),
    t({"\twhile(t--) _main();", ""}),
    t({"\treturn 0;", ""}),
    t({"}", ""}),
  })
})
