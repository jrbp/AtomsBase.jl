module AtomsBaseGLMakieExt
using AtomsBase: AbstractSystem
using GLMakie

function GLMakie.plot!(gp::GridPosition, system::AbstractSystem)
    ls = LScene(gp; show_axis=false)
    sys_trans = Transformation(Point3f(0,0,0))
    foreach(at-> meshscatter!(ls, position(at)..., color=:blue), system)
    #cam3d!(ls; projectiontype=GLMakie.Makie.Orthographic,
    #       lookat=Vec3f(0,0,0),
    #       eyeposition=Vec3f(5.0,5,1),
    #       upvector=Vec3f(0,0,0),
    #       center=true)
    ls, sys_trans
end
end
