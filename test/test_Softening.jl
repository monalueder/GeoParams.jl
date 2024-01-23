using GeoParams, Test

@testset "LinearSoftening" begin

    # Test NoSoftening
    soft = NoSoftening()
    x = rand()
    @test x === soft(x, rand())

    # Test LinearSoftening
    min_v, max_v = 15e0, 30e0
    lo, hi = 0.0, 1.0
    
    @test LinearSoftening(min_v, max_v, lo, hi) === LinearSoftening((min_v, max_v), (lo, hi))
    
    soft_ϕ = LinearSoftening(min_v, max_v, lo, hi)
    
    @test soft_ϕ(30, 1) == min_v
    @test soft_ϕ(30, 0) == max_v
    @test soft_ϕ(30, 0.5) == 0.5 * (min_v + max_v)

    # test Drucker-Prager with softening
    τII = 20e6
    P = 1e6
    args = (P=P, τII=τII)

    p = DruckerPrager()
    @test compute_yieldfunction(p, args) ≈ 1.0839745962155614e7

    args = (P=P, τII=τII, EII=1e0)

    p1 = DruckerPrager(; softening_ϕ = soft_ϕ)
    p2 = DruckerPrager(; softening_C = LinearSoftening((0e0, 10e6), (lo, hi)))
    p3 = DruckerPrager(; softening_ϕ = soft_ϕ, softening_C = LinearSoftening((0e0, 10e6), (lo, hi)))

    @test compute_yieldfunction(p1, args) ≈ 1.0081922692006797e7
    @test compute_yieldfunction(p2, args) ≈ 1.95e7
    @test compute_yieldfunction(p3, args) ≈ 1.974118095489748e7

    # test regularized Drucker-Prager with softening
    p = DruckerPrager_regularised()
    @test compute_yieldfunction(p, args) ≈ 1.0839745962155614e7

    args = (P=P, τII=τII, EII=1e0)

    p1 = DruckerPrager(; softening_ϕ = soft_ϕ)
    p2 = DruckerPrager(; softening_C = LinearSoftening((0e0, 10e6), (lo, hi)))
    p3 = DruckerPrager(; softening_ϕ = soft_ϕ, softening_C = LinearSoftening((0e0, 10e6), (lo, hi)))

    @test compute_yieldfunction(p1, args) ≈ 1.0081922692006797e7
    @test compute_yieldfunction(p2, args) ≈ 1.95e7
    @test compute_yieldfunction(p3, args) ≈ 1.974118095489748e7
    
end

