#include "DarcyPressure.h"

registerMooseObject("BabblerApp", DarcyPressure);

InputParameters
DarcyPressure::validParams()
{
  InputParameters params = ADKernelGrad::validParams();
  params.addClassDescription("Compute the diffusion term for Darcy pressure ($p$) equation: "
                             "$-\\nabla \\cdot \\frac{\\mathbf{K}}{\\mu} \\nabla p = 0$");

  return params;
}

DarcyPressure::DarcyPressure(const InputParameters & parameters)
  : ADKernelGrad(parameters),

    // Set the coefficients for the pressure kernel
    _permeability(0.8451e-09),
    _visccd ~/projects/moose
git fetch origin
git rebase origin/masterosity(7.98e-04)
{
}

ADRealVectorValue
DarcyPressure::precomputeQpResidual()
/* don't need to include _grad_test as it is handled automatically */
{
  return (_permeability / _viscosity) * _grad_u[_qp];
}
