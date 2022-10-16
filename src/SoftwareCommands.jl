module SoftwareCommands

abstract type Command end
# See https://github.com/JuliaLang/julia/blob/3fa2d26/base/operators.jl#L1078-L1083 & https://github.com/JuliaGeometry/CoordinateTransformations.jl/blob/ff9ea6e/src/core.jl#L29-L32
struct ComposedCommand{A<:Command,B<:Command} <: Command
    a::A
    b::B
end

# See https://github.com/JuliaLang/julia/blob/3fa2d26/base/operators.jl#L1088
Base.:∘(a::Command, b::Command) = ComposedCommand(a, b)

end
