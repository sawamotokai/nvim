local ls = require("luasnip")
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
    t({"void _main() {", ""}),
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
  }),
  s("graph", {
    t({"rep(i, m) {", ""}),
    t({"\tint a,b; cin >> a >> b; a--; b--;", ""}),
    t({"\tto[a].push_back(b);", ""}),
    t({"\tto[b].push_back(a);", ""}),
    t({"}", ""}),
  }),
  s("mint", {
    t({"const int mod = 1000000007;", ""}),
    t({"// const int mod = 998244353;", ""}),
    t({"struct mint {", ""}),
    t({"\tll x; // typedef long long ll;", ""}),
    t({"\tmint(ll a=0):x((a%mod+mod)%mod){}", ""}),
    t({"\tmint operator-() const { return mint(-x);}", ""}),
    t({"\tmint& operator+=(const mint a) {", ""}),
    t({"\t\tif ((x += a.x) >= mod) x -= mod;", ""}),
    t({"\t\treturn *this;", ""}),
    t({"\t}", ""}),
    t({"\tmint& operator-=(const mint a) {", ""}),
    t({"\t\tif ((x += mod-a.x) >= mod) x -= mod;", ""}),
    t({"\t\treturn *this;", ""}),
    t({"\t}", ""}),
    t({"\tmint& operator*=(const mint a) { (x *= a.x) %= mod; return *this;}", ""}),
    t({"\tmint operator+(const mint a) const { return mint(*this) += a;}", ""}),
    t({"\tmint operator-(const mint a) const { return mint(*this) -= a;}", ""}),
    t({"\tmint operator*(const mint a) const { return mint(*this) *= a;}", ""}),
    t({"\tmint pow(ll t) const {", ""}),
    t({"\t\tif (!t) return 1;", ""}),
    t({"\t\tmint a = pow(t>>1);", ""}),
    t({"\t\ta *= a;", ""}),
    t({"\t\tif (t&1) a *= *this;", ""}),
    t({"\t\treturn a;", ""}),
    t({"\t}", ""}),
    t({"", ""}),
    t({"\t// for prime mod", ""}),
    t({"\tmint inv() const { return pow(mod-2);}", ""}),
    t({"\tmint& operator/=(const mint a) { return *this *= a.inv();}", ""}),
    t({"\tmint operator/(const mint a) const { return mint(*this) /= a;}", ""}),
    t({"};", ""}),
    t({"", ""}),
    t({"istream& operator>>(istream& is, const mint& a) { return is >> a.x;}", ""}),
    t({"ostream& operator<<(ostream& os, const mint& a) { return os << a.x;}", ""}),
    t({"", ""}),
    t({"struct combination {", ""}),
    t({"\tvector<mint> fact, ifact;", ""}),
    t({"\tcombination(int n):fact(n+1),ifact(n+1) {", ""}),
    t({"\t\tassert(n < mod);", ""}),
    t({"\t\tfact[0] = 1;", ""}),
    t({"\t\tfor (int i = 1; i <= n; ++i) fact[i] = fact[i-1]*i;", ""}),
    t({"\t\tifact[n] = fact[n].inv();", ""}),
    t({"\t\tfor (int i = n; i >= 1; --i) ifact[i-1] = ifact[i]*i;", ""}),
    t({"\t}", ""}),
    t({"\tmint operator()(int n, int k) {", ""}),
    t({"\t\tif (k < 0 || k > n) return 0;", ""}),
    t({"\t\treturn fact[n]*ifact[k]*ifact[n-k];", ""}),
    t({"\t}", ""}),
    t({"};", ""}),
  }),
  s("gcd", {
    t({"ll gcd(ll a, ll b) { return b?gcd(b,a%b):a;}", ""}),
    t({"ll lcm(ll a, ll b) { return a/gcd(a,b)*b;}", ""}),
  }),
  s("BIT", {
    t({"template<typename T>", ""}),
    t({"struct BIT {", ""}),
    t({"\tint n;", ""}),
    t({"\tvector<T> d;", ""}),
    t({"\tBIT(int a=0):n(a),d(a+1) {}", ""}),
    t({"\tvoid add(int i, T x=1) {", ""}),
    t({"\t\tfor (i++; i <= n; i += i&-i) {", ""}),
    t({"\t\t\td[i] += x;", ""}),
    t({"\t\t}", ""}),
    t({"\t}", ""}),
    t({"\tT sum(int i) {", ""}),
    t({"\t\tT x = 0;", ""}),
    t({"\t\tfor (i++; i; i -= i&-i) {", ""}),
    t({"\t\t\tx += d[i];", ""}),
    t({"\t\t}", ""}),
    t({"\t\treturn x;", ""}),
    t({"\t}", ""}),
    t({"\tT sum(int l, int r) {", ""}),
    t({"\t\treturn sum(r-1) - sum(l-1);", ""}),
    t({"\t}", ""}),
    t({"};", ""}),
  }),
  s("primes", {
    t({"// Sieve of Eratosthenes", ""}),
    t({"// https://youtu.be/UTVg7wzMWQc?t=2774", ""}),
    t({"struct Sieve {", ""}),
    t({"\tint n;", ""}),
    t({"\tvector<int> f, primes;", ""}),
    t({"\tSieve(int a=1):n(a), f(a+1) {", ""}),
    t({"\t\tf[0] = f[1] = -1;", ""}),
    t({"\t\tfor (ll i = 2; i <= n; ++i) {", ""}),
    t({"\t\t\tif (f[i]) continue;", ""}),
    t({"\t\t\tprimes.push_back(i);", ""}),
    t({"\t\t\tf[i] = i;", ""}),
    t({"\t\t\tfor (ll j = i*i; j <= n; j += i) {", ""}),
    t({"\t\t\t\tif (!f[j]) f[j] = i;", ""}),
    t({"\t\t\t}", ""}),
    t({"\t\t}", ""}),
    t({"\t}", ""}),
    t({"\tbool isprime(int x) { return f[x] == x;}", ""}),
    t({"\tvector<int> factorlist(int x) {", ""}),
    t({"\t\tvector<int> res;", ""}),
    t({"\t\twhile (x != 1) {", ""}),
    t({"\t\t\tif (!res.size() || res.back() != f[x]) res.push_back(f[x]);", ""}),
    t({"\t\t\tx /= f[x];", ""}),
    t({"\t\t}", ""}),
    t({"\t\treturn res;", ""}),
    t({"\t}", ""}),
    t({"\tvector<ii> factor(int x) {", ""}),
    t({"\t\tvector<int> fl = factorlist(x);", ""}),
    t({"\t\tif (fl.size() == 0) return {};", ""}),
    t({"\t\tvector<ii> res(1, ii(fl[0], 0));", ""}),
    t({"\t\tfor (int p : fl) {", ""}),
    t({"\t\t\t\tif (res.back().first == p) {", ""}),
    t({"\t\t\t\t\tres.back().second++;", ""}),
    t({"\t\t\t\t} else {", ""}),
    t({"\t\t\t\t\tres.emplace_back(p, 1);", ""}),
    t({"\t\t\t\t}", ""}),
    t({"\t\t\t}", ""}),
    t({"\t\t\treturn res;", ""}),
    t({"\t\t}", ""}),
    t({"\t\tvector<pair<ll,int>> factor(ll x) {", ""}),
    t({"\t\t\tvector<pair<ll,int>> res;", ""}),
    t({"\t\t\tfor (int p : primes) {", ""}),
    t({"\t\t\t\tint y = 0;", ""}),
    t({"\t\t\t\twhile (x%p == 0) x /= p, ++y;", ""}),
    t({"\t\t\t\tif (y != 0) res.emplace_back(p,y);", ""}),
    t({"\t\t}", ""}),
    t({"\t\tif (x != 1) res.emplace_back(x,1);", ""}),
    t({"\t\treturn res;", ""}),
    t({"\t}", ""}),
    t({"};", ""}),
  }),
  s("TSP", {
    t({"int V,E;", ""}),
    t({"int dist[20][20];", ""}),
    t({"int dp[1<<20][20];", ""}),
    t({"", ""}),
    t({"", ""}),
    t({"int main() {", ""}),
    t({"\tcin >> V >> E;", ""}),
    t({"\trep(i,20) rep(j,20) dist[i][j] = INF;", ""}),
    t({"\trep(i,E) {", ""}),
    t({"\t\tint a,b,c; cin >> a >> b >> c;", ""}),
    t({"\t\tdist[a][b] =c;", ""}),
    t({"\t}", ""}),
    t({"\trep(i,1<<20) rep(j,20) dp[i][j] = INF;", ""}),
    t({"\tdp[0][0] = 0;", ""}),
    t({"\trep(bits, 1 << V) {", ""}),
    t({"\t\trep(v, V) {", ""}),
    t({"\t\t\tif ((bits & (1 << v))) continue; // if from node is already visited", ""}),
    t({"\t\t\trep(u, V) {", ""}),
    t({"\t\t\t\tchmin(dp[bits | (1 << v)][v], dp[bits][u] + dist[u][v]);", ""}),
    t({"\t\t\t}", ""}),
    t({"\t\t}", ""}),
    t({"\t}", ""}),
    t({"\tll ans = dp[(1<<V)-1][0];", ""}),
    t({"\tif (ans == INF) ans = -1;", ""}),
    t({"\tcout << ans << endl;", ""}),
    t({"\treturn 0;", ""}),
    t({"}", ""}),
  }),
  s("next_combination", {
    t({"template <typename T> bool next_combination(const T first, const T last, int k) {", ""}),
    t({"\tconst T subset = first + k;", ""}),
    t({"\t// empty container | k = 0 | k == n ", ""}),
    t({"\tif (first == last || first == subset || last == subset) {", ""}),
    t({"\t\treturn false;", ""}),
    t({"\t}", ""}),
    t({"\tT src = subset;", ""}),
    t({"\twhile (first != src) {", ""}),
    t({"\t\tsrc--;", ""}),
    t({"\t\tif (*src < *(last - 1)) {", ""}),
    t({"\t\t\tT dest = subset;", ""}),
    t({"\t\t\twhile (*src >= *dest) {", ""}),
    t({"\t\t\t\tdest++;", ""}),
    t({"\t\t\t}", ""}),
    t({"\t\t\titer_swap(src, dest);", ""}),
    t({"\t\t\trotate(src + 1, dest + 1, last);", ""}),
    t({"\t\t\trotate(subset, subset + (last - dest) - 1, last);", ""}),
    t({"\t\t\treturn true;", ""}),
    t({"\t\t}", ""}),
    t({"\t}", ""}),
    t({"\t// restore", ""}),
    t({"\trotate(first, subset, last);", ""}),
    t({"\treturn false;", ""}),
    t({"}", ""}),
    t({"", ""}),
    t({"/*", ""}),
    t({"vector<int> v{1, 2, 3, 4, 5, 6, 7};", ""}),
    t({"do {", ""}),
    t({"\tfor (int i = 0; i < k; i++) {", ""}),
    t({"\t\tcout << v[i] << \" \";", ""}),
    t({"\t}", ""}),
    t({"\tcout << \"| \";", ""}),
    t({"\tfor (int i = k; i < v.size(); i++) {", ""}),
    t({"\t\tcout << v[i] << \" \";", ""}),
    t({"\t}", ""}),
    t({"\tcout << endl;", ""}),
    t({"} while(next_combination(v.begin(), v.end(), k));", ""}),
    t({"", ""}),
    t({"\t1 2 3 | 4 5 6 7 ", ""}),
    t({"\t1 2 4 | 3 5 6 7 ", ""}),
    t({"\t1 2 5 | 3 4 6 7 ", ""}),
    t({"\t1 2 6 | 3 4 5 7 ", ""}),
    t({"\t1 2 7 | 3 4 5 6 ", ""}),
    t({"\t1 3 4 | 2 5 6 7 ", ""}),
    t({"\t1 3 5 | 2 4 6 7 ", ""}),
    t({"\t1 3 6 | 2 4 5 7 ", ""}),
    t({"\t1 3 7 | 2 4 5 6 ", ""}),
    t({"\t1 4 5 | 2 3 6 7", ""}),
    t({"\t...", ""}),
    t({"*/", ""}),
  }),
})
