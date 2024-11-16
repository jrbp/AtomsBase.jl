using AtomsBase
using Unitful
using UnitfulAtomic
using GLMakie: Figure, plot!
using Test

@testset "static vis" begin
    box = [[10, 0.0, 0.0], [0.0, 5, 0.0], [0.0, 0.0, 7]]u"Å"
    atoms = [:Si => [0.0, -0.125, 0.0],
             :C  => [0.125, 0.0, 0.0],
             Atom(:H, zeros(3) * u"Å")]
    system = periodic_system(atoms, box; fractional=true)
    f = Figure()
    plot!(f[1,1], system)
end
