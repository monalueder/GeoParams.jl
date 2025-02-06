"""
    Rt_Al_Cherniak2019_para_c

Diffusion data of Al in rutile. With anhydrous conditions and parallel to c-axis. 
Calibrated between 1100-1400°C. From Cherniak et al. (2019) (https://doi.org/10.2138/am-2019-7030).
"""
function Rt_Al_Cherniak2019_para_c()
    data = DiffusionData(
        Name = "Al diffusion in Rutile (parallel to c-axis and anhydrous conditions) | Cherniak et al. (2019)",
        Phase = "Rutile",  # name of the mineral
        Formula = "TiO2",  # chemical formula of the mineral
        Species = "Al",  # element or species being diffused
        Orientation = "Ξc",  # Crystal orientation from the diffusion experiment
        Crystallography = "Tetragonal",  # Crystallographic system of the mineral
        Buffer = "NNO",  # Buffer condition (e.g., NNO) during the experiment
        Fluid = "Anhydrous",  # Fluid condition (e.g., anhydrous) during the experiment
        D0 = 1.21e-2m^2 / s,  # pre-exponential factor
        log_D0_1σ = 2.1NoUnits,
        Ea = 531kJ / mol,  # activation energy
        Ea_1σ = 27kJ / mol,  # uncertainty at 1σ of the activation energy
        Charge = 3,  # charge of the cation
        T_range_min = 1100C,  # temperature min of the experiment
        T_range_max = 1400C  # temperature max of the experiment
    )
    info = MaterialParamsInfo(;
        Comment = "Checked values by HD (15.01.25)",
        BibTex_Reference = "
          @article{Cherniak2019,
            author = {Daniele J. Cherniak and E. Bruce Watson},
            doi = {10.2138/am-2019-7030},
            issn = {19453027},
            issue = {11},
            journal = {American Mineralogist},
            keywords = {Rutherford backscattering,Rutile,aluminum,diffusion,geobarometry,geothermometry,nuclear reaction analysis,silicon},
            pages = {1638-1649},
            title = {Al and Si diffusion in rutile},
            volume = {104},
            year = {2019},
            }
          ",
    )

    return data, info
end
