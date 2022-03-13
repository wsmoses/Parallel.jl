using Parallel
using Documenter

DocMeta.setdocmeta!(Parallel, :DocTestSetup, :(using Parallel); recursive=true)

makedocs(;
    modules=[Parallel],
    authors="William S. Moses <gh@wsmoses.com> and contributors",
    repo="https://github.com/wsmoses/Parallel.jl/blob/{commit}{path}#{line}",
    sitename="Parallel.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://wsmoses.github.io/Parallel.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/wsmoses/Parallel.jl",
    devbranch="main",
)
