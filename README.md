# Modeling and Control of Underwater Vehicle: Sparus AUV

## Overview
This project is dedicated to the modeling, analysis, and control of the Sparus Autonomous Underwater Vehicle (AUV) under the supervision of Prof. Mathieu Richier at the University of Toulon. Utilizing MATLAB and Simulink, this project encompasses a comprehensive examination of the Sparus AUV's physical properties, hydrodynamics, and control mechanisms.

## Objectives
- **Dimensional Analysis**: Compute dimensions of various components of the Sparus AUV based on provided schematics.
- **Mass Matrix Analysis**: Elucidate the global real mass matrix terms, tracing their origins to specific AUV components.
- **Magnitude Analysis**: Analyze the orders of magnitude of mass matrix terms to derive significant insights.
- **Added Mass Computation**: Calculate added mass matrices at the Sparus AUV's buoyancy center, excluding the main body.
- **Matrix Comparison**: Evaluate the differences in matrices calculated at the Center of Gravity (CG) and Center of Buoyancy (CB) and assess the impact of their spatial separation.
- **Component Comparison**: Contrast the physical and hydrodynamic properties of the main solid body against other components.
- **Mass Matrix Evaluation**: Compare added and real mass matrices to conclude on their relative impacts.
- **Drag Matrix Estimation**: Estimate all drag matrices for the Sparus AUV.
- **Simulation and Validation**: Enhance the simulator with basic experiments to validate the model.
- **Impact Analysis**: Conduct simulations to examine the effects of various coefficients in the global mass matrix and the influence of drag forces under different conditions.

## Project Structure
- `src/`: Contains MATLAB scripts and functions for the analysis and modeling of the Sparus AUV.
- `simulink/`: Simulink models for dynamic simulation and control system design.
- `docs/`: Documentation, including the dimensional analysis, mass matrix explanations, and analysis conclusions.
- `experiments/`: Scripts and Simulink models for simulation experiments designed to validate the model and explore the impact of various parameters.
- `results/`: Results and plots from simulations, showcasing the findings from the experiments.
- `README.md`: Overview and instructions for the project.

## Setup
To run the simulations and analyses included in this project, MATLAB and Simulink must be installed on your system.

1. Clone the repository to your local machine:
   ```
   git clone https://github.com/eather0056/Modeling-and-Control-of-Underwater-Vehicle-Sparus-AUV.git
   ```
2. Navigate to the project directory:
   ```
   cd Modeling_and_Control_of_Underwater_Vehicle_Sparus_AUV
   ```
3. Open MATLAB and set the project directory as your working directory.

## Usage
To execute the analyses and simulations:

1. Open the desired scripts or Simulink models from the `src/` or `simulink/` directories.
2. Run the scripts directly in MATLAB or simulate the models in Simulink.
3. Consult the `experiments/` directory for specific experimental setups and their corresponding scripts or models.

## Results
The project delivers in-depth insights into the hydrodynamic behavior and control strategies of the Sparus AUV. Detailed findings, including the significance of various mass matrix components, the impact of drag forces, and the effectiveness of different control approaches, are documented in the `results/` directory.

## Acknowledgments
Gratitude is extended to Prof. Mathieu Richier for his expert guidance and supervision. This project also benefited from the contributions of fellow researchers and the resources provided by the University of Toulon.
