import os
import pandas as pd
import matplotlib.pyplot as plt

setr_cip_map = {
    "Artificial Intelligence": [
        "11.0102",  # Artificial Intelligence and Robotics
        "11.0701",  # Computer Science
    #    "30.2501",  # Cognitive Science
        "27.0303",  # Computational Mathematics
        "11.0804",  # Modeling, Virtual Environments and Simulation
        "11.0401",  # Information Science/Studies
        "14.0903",  # Computer Software Engineering
        "11.0802",  # Data Modeling/Warehousing and Database Administration
        "11.1005",  # Information Technology Project Management
        "11.0501"   # Computer Systems Analysis
    ],
    "Biotechnology and Synthetic Biology": [
        "26.1201",  # Biotechnology
        "14.0301",  # Agricultural/Biological Engineering and Bioengineering
        "41.0101",  # Biology Technician/Biotechnology Laboratory Technician
        "26.0202",  # Biochemistry
        "26.0801",  # Genetics, General
        "26.0502",  # Microbiology, General
        "26.1307",  # Conservation Biology
        "26.0406",  # Cell/Cellular and Molecular Biology
        "26.1007",  # Pharmacology and Toxicology
        "26.1103"   # Bioinformatics
    ],
    "Cryptography": [
        "11.1003",  # Computer and Information Systems Security
        "27.0303",  # Computational Mathematics
        "27.0502",  # Mathematical Statistics and Probability
        "11.0701",  # Computer Science
        "27.0101",  # Mathematics, General
        "11.0802",  # Data Modeling/Warehousing and Database Administration
        "11.0401",  # Information Science/Studies
        "27.0503",  # Mathematics and Statistics
        "52.1302",  # Business Statistics
        "11.0501"   # Computer Systems Analysis
    ],
    "Lasers": [
        "14.1003",  # Laser and Optical Engineering
        "15.0304",  # Laser and Optical Technology/Technician
        "40.0807",  # Optics/Optical Sciences
        "14.1001",  # Electrical, Electronics and Communications Engineering
        "14.0803",  # Structural Engineering
        "40.0808",  # Solid State and Low-Temperature Physics
        "14.1004",  # Telecommunications Engineering
        "15.0303",  # Electrical, Electronic and Communications Engineering Tech
        "40.0502",  # Analytical Chemistry
        "15.0499"   # Electromechanical and Instrumentation Techs, Other
    ],
    "Materials Science": [
        "14.1801",  # Materials Engineering
        "40.1001",  # Materials Science
        "14.0601",  # Ceramic Sciences and Engineering
        "40.1002",  # Materials Chemistry
        "40.0507",  # Polymer Chemistry
        "14.3201",  # Polymer/Plastics Engineering
        "40.0508",  # Chemical Physics
        "14.0701",  # Chemical Engineering
        "14.0702",  # Chemical and Biomolecular Engineering
        "14.9999"   # Engineering, Other
    ],
    "Neuroscience": [
        "26.1501",  # Neuroscience
        "42.2701",  # Cognitive Psychology and Psycholinguistics
        "26.1003",  # Neuropharmacology
        "26.1001",  # Pharmacology
        "42.2706",  # Physiological Psychology/Psychobiology
        "26.1503",  # Neurobiology and Neurophysiology
        "26.1007",  # Pharmacology and Toxicology
        "26.1504",  # Neurobiology and Behavior
    #    "42.2707",  # Social Psychology
        "26.0203"   # Biophysics
    ],
    "Robotics": [
        "14.4201",  # Mechatronics, Robotics, and Automation Engineering
        "15.0405",  # Robotics Technology/Technician
        "11.0102",  # Artificial Intelligence and Robotics
        "15.0403",  # Electromechanical Technology/Electromechanical Engineering
        "14.1001",  # Electrical, Electronics and Communications Engineering
        "14.0901",  # Computer Engineering, General
        "15.0406",  # Automation Engineer Technology/Technician
        "14.2701",  # Systems Engineering
        "14.0903",  # Computer Software Engineering
        "11.0103"   # Information Technology
    ],
    "Semiconductors": [
        "15.0616",  # Semiconductor Manufacturing Technology
        "14.0902",  # Computer Hardware Engineering
        "40.0808",  # Solid State and Low-Temperature Physics
        "14.0701",  # Chemical Engineering
        "14.0702",  # Chemical and Biomolecular Engineering
        "14.1001",  # Electrical, Electronics and Communications Engineering
        "14.3201",  # Polymer/Plastics Engineering
        "15.0303",  # Electrical, Electronic and Communications Engineering Tech
        "14.4101",  # Electromechanical Engineering
        "14.9999"   # Engineering, Other
    ],
    "Space": [
        "14.0201",  # Aerospace, Aeronautical and Astronautical Engineering
        "29.0305",  # Space Systems Operations
        "40.0202",  # Astrophysics
        "40.0201",  # Astronomy
        "14.2201",  # Naval Architecture and Marine Engineering
        "40.0603",  # Geophysics and Seismology
        "40.0802",  # Atomic/Molecular Physics
        "14.2401",  # Ocean Engineering
        "40.0601",  # Geology/Earth Science, General
        "14.0804"   # Transportation and Highway Engineering
    ],
    "Sustainable Energy Technology": [
        "15.0505",  # Solar Energy Technology/Technician
        "14.1401",  # Environmental/Environmental Health Engineering
        "03.0104",  # Environmental Science
        "15.0503",  # Energy Management and Systems Technology/Technician
        "03.0101",  # Natural Resources/Conservation, General
        "15.0507",  # Environmental Engineering Technology/Environmental Tech
        "03.0205",  # Water, Wetlands, and Marine Resources Management
        "03.0206",  # Land Use Planning and Management/Development
        "03.0201",  # Natural Resources Management and Policy
        "14.0805"   # Water Resources Engineering
    ]
}
