# A script to make the metadata.csv file located in inst/extdata of the package.
# See ?AnnotationHubData::makeAnnotationHubMetadata for a description of the
# metadata.csv file, expected fields and data types. This
# AnnotationHubData::makeAnnotationHubMetadata() function can be used to
# validate the metadata.csv file before submitting the package.

metadata <- data.frame(
    Title = c(
        "LEUK_HEK_PJA27_inter_30.hic",
        "LEUK_HEK_PJA30_inter_30.hic",
        "LEUK_HEK_PJA27_inter_30.mcool",
        "LEUK_HEK_PJA30_inter_30.mcool",
        "LEUK_HEK_PJA27_inter_30_2500Kb.cool",
        "LEUK_HEK_PJA30_inter_30_2500Kb.cool",
        "FS_5kbLoops.txt",
        "WT_5kbLoops.txt",
        "LIMA_0000.bedpe",
        "LIMA_0030.bedpe",
        "LIMA_0060.bedpe",
        "LIMA_0090.bedpe",
        "LIMA_0120.bedpe",
        "LIMA_0240.bedpe",
        "LIMA_0360.bedpe",
        "LIMA_1440.bedpe"
    ),
    Description = c(
        paste(
            "Subsampled Hi-C in HEK cells expressing the NHA9 fusion",
            "with an F to S mutated IDR"
        ),
        paste(
            "Subsampled Hi-C in HEK cells expressing the NHA9 fusion",
            "with a Wildtype IDR"
        ),
        paste(
          "Subsampled Hi-C in HEK cells expressing the NHA9 fusion",
          "with an F to S mutated IDR, converted to .mcool"
        ),
        paste(
          "Subsampled Hi-C in HEK cells expressing the NHA9 fusion",
          "with a Wildtype IDR, converted to .mcool"
        ),
        paste(
          "Subsampled Hi-C in HEK cells expressing the NHA9 fusion",
          "with an F to S mutated IDR, converted to .cool at 2.5Mb resolution"
        ),
        paste(
          "Subsampled Hi-C in HEK cells expressing the NHA9 fusion",
          "with a Wildtype IDR, converted to .cool at 2.5Mb resolution"
        ),
        paste(
          "Loops called with SIP (https://github.com/PouletAxel/SIP)",
          "using Hi-C data from HEK cells expressing an NHA9 fusion",
          "with an F to S mutated IDR"
        ),
        paste(
          "Loops called with SIP (https://github.com/PouletAxel/SIP)",
          "using Hi-C data from HEK cells expressing an NHA9 fusion",
          "with a Wildtype IDR"
        ),
        sprintf(
          fmt = paste(
            "Loops called with SIP (https://github.com/PouletAxel/SIP)",
            "using Hi-C data from THP-1 cells exposed to LPS & IF-G",
            "for %s minutes" 
          ),
          c(0, 30, 60, 90, 120, 240, 360, 1440)
        )
    ),
    BiocVersion = c(rep("3.17", 2),
                    rep("3.19", 4),
                    rep("3.17", 10)),
    Genome = rep("hg19", 16),
    SourceType = c(
      rep("HIC", 2),
      rep("HDF5", 4),
      rep("TXT", 10)
    ),
    SourceUrl = c(
        paste0(
            "https://zenodo.org/record/7786502/files/",
            "LEUK_HEK_PJA27_inter_30.hic"
        ),
        paste0(
            "https://zenodo.org/record/7786502/files/",
            "LEUK_HEK_PJA30_inter_30.hic"
        ),
        paste0(
          "https://zenodo.org/record/10906240/files/",
          "LEUK_HEK_PJA27_inter_30.mcool"
        ),
        paste0(
          "https://zenodo.org/record/10906240/files/",
          "LEUK_HEK_PJA30_inter_30.mcool"
        ),
        paste0(
          "https://zenodo.org/record/10906240/files/",
          "LEUK_HEK_PJA27_inter_30_2500Kb.cool"
        ),
        paste0(
          "https://zenodo.org/record/10906240/files/",
          "LEUK_HEK_PJA30_inter_30_2500Kb.cool"
        ),
        paste0(
          "https://zenodo.org/record/7817671/files/",
          "FS_5kbLoops.txt"
        ),
        paste0(
          "https://zenodo.org/record/7817671/files/",
          "WT_5kbLoops.txt"
        ),
        sprintf(
          fmt = "https://zenodo.org/record/7817695/files/%s",
          c(
            "LIMA_0000.bedpe",
            "LIMA_0030.bedpe",
            "LIMA_0060.bedpe",
            "LIMA_0090.bedpe",
            "LIMA_0120.bedpe",
            "LIMA_0240.bedpe",
            "LIMA_0360.bedpe",
            "LIMA_1440.bedpe"
          )
        )
    ),
    SourceVersion = rep("v1", 16),
    Species = rep("Homo sapiens", 16),
    TaxonomyId = rep(9606, 16),
    Coordinate_1_based = rep(FALSE, 16),
    DataProvider = rep("Phanstiel Lab", 16),
    Maintainer = rep("Eric S Davis <ericscottdavis@outlook.com>", 16),
    RDataClass = rep("character", 16),
    DispatchClass = rep("FilePath", 16),
    Location_Prefix = rep("https://zenodo.org/", 16),
    RDataPath = c(
        "record/7786502/files/LEUK_HEK_PJA27_inter_30.hic",
        "record/7786502/files/LEUK_HEK_PJA30_inter_30.hic",
        "record/10906240/files/LEUK_HEK_PJA27_inter_30.mcool",
        "record/10906240/files/LEUK_HEK_PJA30_inter_30.mcool",
        "record/10906240/files/LEUK_HEK_PJA27_inter_30_2500Kb.cool",
        "record/10906240/files/LEUK_HEK_PJA30_inter_30_2500Kb.cool",
        "record/7817671/files/FS_5kbLoops.txt",
        "record/7817671/files/WT_5kbLoops.txt",
        "record/7817695/files/LIMA_0000.bedpe", 
        "record/7817695/files/LIMA_0030.bedpe",
        "record/7817695/files/LIMA_0060.bedpe", 
        "record/7817695/files/LIMA_0090.bedpe",
        "record/7817695/files/LIMA_0120.bedpe", 
        "record/7817695/files/LIMA_0240.bedpe",
        "record/7817695/files/LIMA_0360.bedpe", 
        "record/7817695/files/LIMA_1440.bedpe"
    ),
    Tags = c(
      rep("Hi-C", 2),
      rep("HDF5", 4),
      rep("BEDPE", 10)
    )
)

write.csv(metadata, file="inst/extdata/metadata.csv", row.names=FALSE)
