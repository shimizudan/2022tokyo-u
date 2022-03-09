### A Pluto.jl notebook ###
# v0.17.4

using Markdown
using InteractiveUtils

# ╔═╡ 27f8ec95-5e33-46d0-a1e8-ee0c5de10bbc
using MathLink,MathLinkExtras

# ╔═╡ 18c24300-9f90-11ec-2320-5f384dcdcc06
md"# 2022年度東京大学理系　
## 第1問

次の関数$f(x)$を考える。
    
$$f(x)=(\cos x)\log(\cos x)-\cos x+\int_0^x(\cos t)\log (\cos t)dt\quad\left(0\leqq x<\dfrac{\pi}2\right)$$

    
(1) 　$f(x)$ は区間 $0\leqq x<\dfrac{\pi}2$ において最小値を持つことを示せ。


(2) 　$f(x)$ の区間 $0\leqq x<\dfrac{\pi}2$ における最小値を求めよ。"

# ╔═╡ a104d83a-5622-406f-89d8-b9134d1666ff
md"- まずはパッケージを読み込む"

# ╔═╡ 8b9a28cf-6c6e-4f58-babc-5a166c63b805
md"- 　$g(x)=\int_{}^{}(\cos x)\log (\cos x)dt$ とおく。"

# ╔═╡ a7b21a65-2dfc-4e2b-94c9-bbb7824fdb2f
weval(W`g[x_]=Integrate[Cos[x]Log[Cos[x]],x]`)

# ╔═╡ bd5eae3b-b4c8-4b7e-9b7d-afc1ecd7d2b3
md"- 　$f(x)=(\cos x)\log(\cos x)-\cos x+g(x)-g(0)$ である。"

# ╔═╡ 56211edc-af93-4512-bad2-36cc8c0b78a5
weval(W`f[x_]=Cos[x]Log[Cos[x]]-Cos[x]+g[x]-g[0]//Simplify`)

# ╔═╡ 372277ad-80bf-4d99-9f64-72cb4d4884a7
md"- 　$f_1(x)=f'(x)$として求める。簡略化する。"

# ╔═╡ d2984146-7b98-43ff-9d20-c74f73964fb6
weval(W`f1[x_]=D[f[x],x]//Simplify`)

# ╔═╡ f84a1570-c9b3-4308-ae20-7f025bff6523
md"- 　$f_1(x)=0$ となる$x$ を調べる。"

# ╔═╡ ae07bef7-c09e-4738-8f3e-6bd5e359f778
weval(W`Solve[f1[x]==0,x]`)

# ╔═╡ 3777a15e-e795-4905-bbea-f9ca3063bf7e
md"- 　$y=f_1(x)$ のグラフを書いて，$x=\dfrac{\pi}4$の前後の符号の変化を確認する。"

# ╔═╡ 828c6f13-cf96-44fa-a891-354012c9fc3e
weval(W`Plot[f1[x],{x,0,Pi/2}]`)

# ╔═╡ d5bf0698-bf1b-4727-a241-9f8f276fb65f
md"- 　$f_1(x)$は$x=\dfrac{\pi}4$の前後で負から正に変化する。よって，$f(x)$は最小値を持つ。


- 　最小値 $f\left(\dfrac{\pi}4\right)$を求める。"

# ╔═╡ f1f4251e-bd72-4c93-bb40-79f64455a941
weval(W`f[Pi/4]//Simplify`)

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
MathLink = "18c93696-a329-5786-9845-8443133fa0b4"
MathLinkExtras = "319bc7fa-14a0-11ec-21e1-6160fff0bbd8"

[compat]
MathLink = "~0.3.2"
MathLinkExtras = "~0.1.2"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MathLink]]
deps = ["Libdl", "Printf"]
git-tree-sha1 = "653c35640db592dfddd8c46dbb43d561cbef7862"
uuid = "18c93696-a329-5786-9845-8443133fa0b4"
version = "0.3.2"

[[deps.MathLinkExtras]]
deps = ["MathLink", "Test"]
git-tree-sha1 = "eaaf742bb0a657a33a8d24603a9693d57cae5f6c"
uuid = "319bc7fa-14a0-11ec-21e1-6160fff0bbd8"
version = "0.1.2"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
"""

# ╔═╡ Cell order:
# ╟─18c24300-9f90-11ec-2320-5f384dcdcc06
# ╟─a104d83a-5622-406f-89d8-b9134d1666ff
# ╠═27f8ec95-5e33-46d0-a1e8-ee0c5de10bbc
# ╟─8b9a28cf-6c6e-4f58-babc-5a166c63b805
# ╠═a7b21a65-2dfc-4e2b-94c9-bbb7824fdb2f
# ╟─bd5eae3b-b4c8-4b7e-9b7d-afc1ecd7d2b3
# ╠═56211edc-af93-4512-bad2-36cc8c0b78a5
# ╟─372277ad-80bf-4d99-9f64-72cb4d4884a7
# ╠═d2984146-7b98-43ff-9d20-c74f73964fb6
# ╟─f84a1570-c9b3-4308-ae20-7f025bff6523
# ╠═ae07bef7-c09e-4738-8f3e-6bd5e359f778
# ╟─3777a15e-e795-4905-bbea-f9ca3063bf7e
# ╠═828c6f13-cf96-44fa-a891-354012c9fc3e
# ╠═d5bf0698-bf1b-4727-a241-9f8f276fb65f
# ╠═f1f4251e-bd72-4c93-bb40-79f64455a941
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
