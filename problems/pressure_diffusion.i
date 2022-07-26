[Mesh]
  type=GeneratedMesh
  dim = 2
  nx = 100 #the number of elements in the x direction
  ny = 10 #the number of elements in the y direction
  # how is this assigned? why is nx 10 times biger than ny
  xmax = 0.304 #the length of the pipe
  ymax = 0.0257 #the radius of the pipe
  []

  [Problem]
    type = FEProblem
    coord_type = RZ
    rz_coord_axis = X
  []

[Variables]
  [pressure]
    #adds a linear Ligrange variable by default (why? how does it know )
  []
[]

[Kernels]
  [diffusion]
    type = DarcyPressure
    variable = pressure
  []
[]

[BCs]
  [inlet]
    type = ADDirichletBC
    variable = pressure
    boundary = left
    value = 4000
  []
  [outlet]
    type = ADDirichletBC
    variable = pressure
    boundary = right
    value = 0
  []
[]

[Executioner]
  type = Steady # Steady state problem
solve_type = NEWTON # Perform a Newton solve

# Set PETSc parameters to optimize solver efficiency
petsc_options_iname = '-pc_type -pc_hypre_type' # PETSc option pairs with values below
petsc_options_value = ' hypre    boomeramg'
[]

[Outputs]
  exodus = true
[]
