

"""
    Melt_Ce_Holycross2018_rhyolitic_highH2O()

Diffusion data of Ce in rhyolitic melt (76.77 wt% SiO2) with 6.2 wt% of H2O. Calibrated with experiments conducted between 850-935°C at 1 GPa with Ag capsules from synthetic glass.
From Holycross and Watson (2018) (https://doi.org/10.1016/j.gca.2018.04.006).
"""
function Melt_Ce_Holycross2018_rhyolitic_highH2O()
    data = DiffusionData(
        Name = "Ce diffusion in rhyolitic melt (6.2 wt% H2O) | Holycross and Watson (2018)",
        Phase = "Melt",  # name of the mineral
        Formula = "",  # chemical formula of the mineral
        Species = "Ce",  # element or species being diffused
        Orientation = "Amorphous",  # Crystal orientation from the diffusion experiment
        Crystallography = "Amorphous",  # Crystallographic system of the mineral
        Buffer = "non-buffered",  # Buffer condition (e.g., NNO) during the experiment
        Fluid = "Hydrated",  # Fluid condition (e.g., anhydrous) during the experiment
        D0 = (10^(-4.50))u"m^2 / s",  # pre-exponential factor (log10(-3.21) in the original paper
        log_D0_1σ = 1.03*2.303,  # uncertainty reported as log10(D0) in the original paper
        Ea = (174.53)u"kJ/mol",  # activation energy
        Ea_1σ = (22.89)u"kJ/mol",  # uncertainty at 1σ of the activation energy
        Charge = 3,  # charge of the cation
        T_range_min = 850C,  # temperature min of the experiment
        T_range_max = 935C,  # temperature max of the experiment
    )
    info = MaterialParamsInfo(;
        Comment = "Checked values by HD (24.01.25). Values originally reported in log10 but converted here to ln. Taken from Table 3 (least-squares fit)",
        BibTex_Reference = "
            @article{holycross2018trace,
            title={Trace element diffusion and kinetic fractionation in wet rhyolitic melt},
            author={Holycross, Megan E and Watson, E Bruce},
            journal={Geochimica et Cosmochimica Acta},
            volume={232},
            pages={14--29},
            year={2018},
            publisher={Elsevier}
            }
            ",
    )

    return data, info
end


"""
    Melt_Ce_Holycross2018_rhyolitic_mediumH2O()

Diffusion data of Ce in rhyolitic melt (76.77 wt% SiO2) with 4.1 wt% of H2O. Calibrated with experiments conducted between 960-1250°C at 1 GPa with Ni capsules from synthetic glass.
From Holycross and Watson (2018) (https://doi.org/10.1016/j.gca.2018.04.006).
"""
function Melt_Ce_Holycross2018_rhyolitic_mediumH2O()
    data = DiffusionData(
        Name = "Ce diffusion in rhyolitic melt (4.1 wt% H2O) | Holycross and Watson (2018)",
        Phase = "Melt",  # name of the mineral
        Formula = "",  # chemical formula of the mineral
        Species = "Ce",  # element or species being diffused
        Orientation = "Amorphous",  # Crystal orientation from the diffusion experiment
        Crystallography = "Amorphous",  # Crystallographic system of the mineral
        Buffer = "NNO",  # Buffer condition (e.g., NNO) during the experiment
        Fluid = "Hydrated",  # Fluid condition (e.g., anhydrous) during the experiment
        D0 = (10^(-4.11))u"m^2 / s",  # pre-exponential factor (log10(-3.21) in the original paper
        log_D0_1σ = 0.40*2.303,  # uncertainty reported as log10(D0) in the original paper
        Ea = (199.47)u"kJ/mol",  # activation energy
        Ea_1σ = (10.22)u"kJ/mol",  # uncertainty at 1σ of the activation energy
        Charge = 3,  # charge of the cation
        T_range_min = 960C,  # temperature min of the experiment
        T_range_max = 1250C,  # temperature max of the experiment
    )
    info = MaterialParamsInfo(;
        Comment = "Checked values by HD (24.01.25). Values originally reported in log10 but converted here to ln. Taken from Table 3 (least-squares fit)",
        BibTex_Reference = "
            @article{holycross2018trace,
            title={Trace element diffusion and kinetic fractionation in wet rhyolitic melt},
            author={Holycross, Megan E and Watson, E Bruce},
            journal={Geochimica et Cosmochimica Acta},
            volume={232},
            pages={14--29},
            year={2018},
            publisher={Elsevier}
            }
            ",
    )

    return data, info
end