using SoftwareCommands
using Documenter

DocMeta.setdocmeta!(SoftwareCommands, :DocTestSetup, :(using SoftwareCommands); recursive=true)

makedocs(;
    modules=[SoftwareCommands],
    authors="singularitti <singularitti@outlook.com> and contributors",
    repo="https://github.com/MineralsCloud/SoftwareCommands.jl/blob/{commit}{path}#{line}",
    sitename="SoftwareCommands.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://MineralsCloud.github.io/SoftwareCommands.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/MineralsCloud/SoftwareCommands.jl",
    devbranch="main",
)
