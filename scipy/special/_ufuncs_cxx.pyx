# This file is automatically generated by generate_ufuncs.py.
# Do not edit manually!

cdef extern from "_complexstuff.h":
    # numpy/npy_math.h doesn't have correct extern "C" declarations,
    # so we must include a wrapped version first
    pass

cdef extern from "numpy/npy_math.h":
    double NPY_NAN

cimport numpy as np
from numpy cimport (
    npy_float, npy_double, npy_longdouble,
    npy_cfloat, npy_cdouble, npy_clongdouble,
    npy_int, npy_long,
    NPY_FLOAT, NPY_DOUBLE, NPY_LONGDOUBLE,
    NPY_CFLOAT, NPY_CDOUBLE, NPY_CLONGDOUBLE,
    NPY_INT, NPY_LONG)

ctypedef double complex double_complex

cimport libc

np.import_array()
np.import_ufunc()

cdef void loop_d_d__As_f_f(char **args, np.npy_intp *dims, np.npy_intp *steps, void *data) nogil:
    cdef np.npy_intp i, n = dims[0]
    cdef void *func = (<void**>data)[0]
    cdef char *func_name = <char*>(<void**>data)[1]
    cdef char *ip0 = args[0], *op0 = args[1]
    cdef double ov0
    for i in range(n):
        ov0 = (<double(*)(double) nogil>func)(<double>(<float*>ip0)[0])
        (<float *>op0)[0] = <float>ov0
        ip0 += steps[0]
        op0 += steps[1]
    sf_error.check_fpe(func_name)

cdef void loop_D_D__As_D_D(char **args, np.npy_intp *dims, np.npy_intp *steps, void *data) nogil:
    cdef np.npy_intp i, n = dims[0]
    cdef void *func = (<void**>data)[0]
    cdef char *func_name = <char*>(<void**>data)[1]
    cdef char *ip0 = args[0], *op0 = args[1]
    cdef double complex ov0
    for i in range(n):
        ov0 = (<double complex(*)(double complex) nogil>func)(<double complex>(<double complex*>ip0)[0])
        (<double complex *>op0)[0] = <double complex>ov0
        ip0 += steps[0]
        op0 += steps[1]
    sf_error.check_fpe(func_name)

cdef void loop_d_d__As_d_d(char **args, np.npy_intp *dims, np.npy_intp *steps, void *data) nogil:
    cdef np.npy_intp i, n = dims[0]
    cdef void *func = (<void**>data)[0]
    cdef char *func_name = <char*>(<void**>data)[1]
    cdef char *ip0 = args[0], *op0 = args[1]
    cdef double ov0
    for i in range(n):
        ov0 = (<double(*)(double) nogil>func)(<double>(<double*>ip0)[0])
        (<double *>op0)[0] = <double>ov0
        ip0 += steps[0]
        op0 += steps[1]
    sf_error.check_fpe(func_name)

cdef void loop_D_D__As_F_F(char **args, np.npy_intp *dims, np.npy_intp *steps, void *data) nogil:
    cdef np.npy_intp i, n = dims[0]
    cdef void *func = (<void**>data)[0]
    cdef char *func_name = <char*>(<void**>data)[1]
    cdef char *ip0 = args[0], *op0 = args[1]
    cdef double complex ov0
    for i in range(n):
        ov0 = (<double complex(*)(double complex) nogil>func)(<double complex>(<float complex*>ip0)[0])
        (<float complex *>op0)[0] = <float complex>ov0
        ip0 += steps[0]
        op0 += steps[1]
    sf_error.check_fpe(func_name)

cdef extern from "_ufuncs_cxx_defs.h":
    cdef double _func_faddeeva_dawsn "faddeeva_dawsn"(double) nogil
cdef extern from "_ufuncs_cxx_defs.h":
    cdef double complex _func_faddeeva_dawsn_complex "faddeeva_dawsn_complex"(double complex) nogil
cdef extern from "_ufuncs_cxx_defs.h":
    cdef double _func_erf "erf"(double) nogil
cdef extern from "_ufuncs_cxx_defs.h":
    cdef double complex _func_faddeeva_erf "faddeeva_erf"(double complex) nogil
cdef extern from "_ufuncs_cxx_defs.h":
    cdef double _func_erfc "erfc"(double) nogil
cdef extern from "_ufuncs_cxx_defs.h":
    cdef double complex _func_faddeeva_erfc "faddeeva_erfc"(double complex) nogil
cdef extern from "_ufuncs_cxx_defs.h":
    cdef double _func_faddeeva_erfcx "faddeeva_erfcx"(double) nogil
cdef extern from "_ufuncs_cxx_defs.h":
    cdef double complex _func_faddeeva_erfcx_complex "faddeeva_erfcx_complex"(double complex) nogil
cdef extern from "_ufuncs_cxx_defs.h":
    cdef double _func_faddeeva_erfi "faddeeva_erfi"(double) nogil
cdef extern from "_ufuncs_cxx_defs.h":
    cdef double complex _func_faddeeva_erfi_complex "faddeeva_erfi_complex"(double complex) nogil
cdef extern from "_ufuncs_cxx_defs.h":
    cdef double complex _func_faddeeva_w "faddeeva_w"(double complex) nogil

cdef np.PyUFuncGenericFunction ufunc_dawsn_loops[4]
cdef void *ufunc_dawsn_ptr[8]
cdef void *ufunc_dawsn_data[4]
cdef char ufunc_dawsn_types[8]
cdef char *ufunc_dawsn_doc = (
    "y=dawsn(x) returns dawson's integral: exp(-x**2) *\n"
    "integral(exp(t**2),t=0..x).\n"
    "\n"
    "References\n"
    "----------\n"
    ".. [1] Steven G. Johnson, Faddeeva W function implementation.\n"
    "   http://ab-initio.mit.edu/Faddeeva")
ufunc_dawsn_loops[0] = <np.PyUFuncGenericFunction>loop_d_d__As_f_f
ufunc_dawsn_loops[1] = <np.PyUFuncGenericFunction>loop_d_d__As_d_d
ufunc_dawsn_loops[2] = <np.PyUFuncGenericFunction>loop_D_D__As_F_F
ufunc_dawsn_loops[3] = <np.PyUFuncGenericFunction>loop_D_D__As_D_D
ufunc_dawsn_types[0] = <char>NPY_FLOAT
ufunc_dawsn_types[1] = <char>NPY_FLOAT
ufunc_dawsn_types[2] = <char>NPY_DOUBLE
ufunc_dawsn_types[3] = <char>NPY_DOUBLE
ufunc_dawsn_types[4] = <char>NPY_CFLOAT
ufunc_dawsn_types[5] = <char>NPY_CFLOAT
ufunc_dawsn_types[6] = <char>NPY_CDOUBLE
ufunc_dawsn_types[7] = <char>NPY_CDOUBLE
ufunc_dawsn_ptr[2*0] = <void*>_func_faddeeva_dawsn
ufunc_dawsn_ptr[2*0+1] = <void*>(<char*>"dawsn")
ufunc_dawsn_ptr[2*1] = <void*>_func_faddeeva_dawsn
ufunc_dawsn_ptr[2*1+1] = <void*>(<char*>"dawsn")
ufunc_dawsn_ptr[2*2] = <void*>_func_faddeeva_dawsn_complex
ufunc_dawsn_ptr[2*2+1] = <void*>(<char*>"dawsn")
ufunc_dawsn_ptr[2*3] = <void*>_func_faddeeva_dawsn_complex
ufunc_dawsn_ptr[2*3+1] = <void*>(<char*>"dawsn")
ufunc_dawsn_data[0] = &ufunc_dawsn_ptr[2*0]
ufunc_dawsn_data[1] = &ufunc_dawsn_ptr[2*1]
ufunc_dawsn_data[2] = &ufunc_dawsn_ptr[2*2]
ufunc_dawsn_data[3] = &ufunc_dawsn_ptr[2*3]
dawsn = np.PyUFunc_FromFuncAndData(ufunc_dawsn_loops, ufunc_dawsn_data, ufunc_dawsn_types, 4, 1, 1, 0, "dawsn", ufunc_dawsn_doc, 0)

cdef np.PyUFuncGenericFunction ufunc_erf_loops[4]
cdef void *ufunc_erf_ptr[8]
cdef void *ufunc_erf_data[4]
cdef char ufunc_erf_types[8]
cdef char *ufunc_erf_doc = (
    "erf(z)\n"
    "\n"
    "Returns the error function of complex argument.\n"
    "\n"
    "It is defined as ``2/sqrt(pi)*integral(exp(-t**2), t=0..z)``.\n"
    "\n"
    "Parameters\n"
    "----------\n"
    "x : ndarray\n"
    "    Input array.\n"
    "\n"
    "Returns\n"
    "-------\n"
    "res : ndarray\n"
    "    The values of the error function at the given points x.\n"
    "\n"
    "See Also\n"
    "--------\n"
    "erfc, erfinv, erfcinv\n"
    "\n"
    "Notes\n"
    "-----\n"
    "The cumulative of the unit normal distribution is given by\n"
    "``Phi(z) = 1/2[1 + erf(z/sqrt(2))]``.\n"
    "\n"
    "References\n"
    "----------\n"
    ".. [1] http://en.wikipedia.org/wiki/Error_function\n"
    ".. [2] Milton Abramowitz and Irene A. Stegun, eds.\n"
    "    Handbook of Mathematical Functions with Formulas,\n"
    "    Graphs, and Mathematical Tables. New York: Dover,\n"
    "    1972. http://www.math.sfu.ca/~cbm/aands/page_297.htm\n"
    ".. [3] Steven G. Johnson, Faddeeva W function implementation.\n"
    "   http://ab-initio.mit.edu/Faddeeva")
ufunc_erf_loops[0] = <np.PyUFuncGenericFunction>loop_d_d__As_f_f
ufunc_erf_loops[1] = <np.PyUFuncGenericFunction>loop_d_d__As_d_d
ufunc_erf_loops[2] = <np.PyUFuncGenericFunction>loop_D_D__As_F_F
ufunc_erf_loops[3] = <np.PyUFuncGenericFunction>loop_D_D__As_D_D
ufunc_erf_types[0] = <char>NPY_FLOAT
ufunc_erf_types[1] = <char>NPY_FLOAT
ufunc_erf_types[2] = <char>NPY_DOUBLE
ufunc_erf_types[3] = <char>NPY_DOUBLE
ufunc_erf_types[4] = <char>NPY_CFLOAT
ufunc_erf_types[5] = <char>NPY_CFLOAT
ufunc_erf_types[6] = <char>NPY_CDOUBLE
ufunc_erf_types[7] = <char>NPY_CDOUBLE
ufunc_erf_ptr[2*0] = <void*>_func_erf
ufunc_erf_ptr[2*0+1] = <void*>(<char*>"erf")
ufunc_erf_ptr[2*1] = <void*>_func_erf
ufunc_erf_ptr[2*1+1] = <void*>(<char*>"erf")
ufunc_erf_ptr[2*2] = <void*>_func_faddeeva_erf
ufunc_erf_ptr[2*2+1] = <void*>(<char*>"erf")
ufunc_erf_ptr[2*3] = <void*>_func_faddeeva_erf
ufunc_erf_ptr[2*3+1] = <void*>(<char*>"erf")
ufunc_erf_data[0] = &ufunc_erf_ptr[2*0]
ufunc_erf_data[1] = &ufunc_erf_ptr[2*1]
ufunc_erf_data[2] = &ufunc_erf_ptr[2*2]
ufunc_erf_data[3] = &ufunc_erf_ptr[2*3]
erf = np.PyUFunc_FromFuncAndData(ufunc_erf_loops, ufunc_erf_data, ufunc_erf_types, 4, 1, 1, 0, "erf", ufunc_erf_doc, 0)

cdef np.PyUFuncGenericFunction ufunc_erfc_loops[4]
cdef void *ufunc_erfc_ptr[8]
cdef void *ufunc_erfc_data[4]
cdef char ufunc_erfc_types[8]
cdef char *ufunc_erfc_doc = (
    "y=erfc(x) returns 1 - erf(x).\n"
    "\n"
    "References\n"
    "----------\n"
    ".. [1] Steven G. Johnson, Faddeeva W function implementation.\n"
    "   http://ab-initio.mit.edu/Faddeeva")
ufunc_erfc_loops[0] = <np.PyUFuncGenericFunction>loop_d_d__As_f_f
ufunc_erfc_loops[1] = <np.PyUFuncGenericFunction>loop_d_d__As_d_d
ufunc_erfc_loops[2] = <np.PyUFuncGenericFunction>loop_D_D__As_F_F
ufunc_erfc_loops[3] = <np.PyUFuncGenericFunction>loop_D_D__As_D_D
ufunc_erfc_types[0] = <char>NPY_FLOAT
ufunc_erfc_types[1] = <char>NPY_FLOAT
ufunc_erfc_types[2] = <char>NPY_DOUBLE
ufunc_erfc_types[3] = <char>NPY_DOUBLE
ufunc_erfc_types[4] = <char>NPY_CFLOAT
ufunc_erfc_types[5] = <char>NPY_CFLOAT
ufunc_erfc_types[6] = <char>NPY_CDOUBLE
ufunc_erfc_types[7] = <char>NPY_CDOUBLE
ufunc_erfc_ptr[2*0] = <void*>_func_erfc
ufunc_erfc_ptr[2*0+1] = <void*>(<char*>"erfc")
ufunc_erfc_ptr[2*1] = <void*>_func_erfc
ufunc_erfc_ptr[2*1+1] = <void*>(<char*>"erfc")
ufunc_erfc_ptr[2*2] = <void*>_func_faddeeva_erfc
ufunc_erfc_ptr[2*2+1] = <void*>(<char*>"erfc")
ufunc_erfc_ptr[2*3] = <void*>_func_faddeeva_erfc
ufunc_erfc_ptr[2*3+1] = <void*>(<char*>"erfc")
ufunc_erfc_data[0] = &ufunc_erfc_ptr[2*0]
ufunc_erfc_data[1] = &ufunc_erfc_ptr[2*1]
ufunc_erfc_data[2] = &ufunc_erfc_ptr[2*2]
ufunc_erfc_data[3] = &ufunc_erfc_ptr[2*3]
erfc = np.PyUFunc_FromFuncAndData(ufunc_erfc_loops, ufunc_erfc_data, ufunc_erfc_types, 4, 1, 1, 0, "erfc", ufunc_erfc_doc, 0)

cdef np.PyUFuncGenericFunction ufunc_erfcx_loops[4]
cdef void *ufunc_erfcx_ptr[8]
cdef void *ufunc_erfcx_data[4]
cdef char ufunc_erfcx_types[8]
cdef char *ufunc_erfcx_doc = (
    "Scaled complementary error function, exp(x^2) erfc(x)\n"
    "\n"
    ".. versionadded:: 0.12.0\n"
    "\n"
    "References\n"
    "----------\n"
    ".. [1] Steven G. Johnson, Faddeeva W function implementation.\n"
    "   http://ab-initio.mit.edu/Faddeeva")
ufunc_erfcx_loops[0] = <np.PyUFuncGenericFunction>loop_d_d__As_f_f
ufunc_erfcx_loops[1] = <np.PyUFuncGenericFunction>loop_d_d__As_d_d
ufunc_erfcx_loops[2] = <np.PyUFuncGenericFunction>loop_D_D__As_F_F
ufunc_erfcx_loops[3] = <np.PyUFuncGenericFunction>loop_D_D__As_D_D
ufunc_erfcx_types[0] = <char>NPY_FLOAT
ufunc_erfcx_types[1] = <char>NPY_FLOAT
ufunc_erfcx_types[2] = <char>NPY_DOUBLE
ufunc_erfcx_types[3] = <char>NPY_DOUBLE
ufunc_erfcx_types[4] = <char>NPY_CFLOAT
ufunc_erfcx_types[5] = <char>NPY_CFLOAT
ufunc_erfcx_types[6] = <char>NPY_CDOUBLE
ufunc_erfcx_types[7] = <char>NPY_CDOUBLE
ufunc_erfcx_ptr[2*0] = <void*>_func_faddeeva_erfcx
ufunc_erfcx_ptr[2*0+1] = <void*>(<char*>"erfcx")
ufunc_erfcx_ptr[2*1] = <void*>_func_faddeeva_erfcx
ufunc_erfcx_ptr[2*1+1] = <void*>(<char*>"erfcx")
ufunc_erfcx_ptr[2*2] = <void*>_func_faddeeva_erfcx_complex
ufunc_erfcx_ptr[2*2+1] = <void*>(<char*>"erfcx")
ufunc_erfcx_ptr[2*3] = <void*>_func_faddeeva_erfcx_complex
ufunc_erfcx_ptr[2*3+1] = <void*>(<char*>"erfcx")
ufunc_erfcx_data[0] = &ufunc_erfcx_ptr[2*0]
ufunc_erfcx_data[1] = &ufunc_erfcx_ptr[2*1]
ufunc_erfcx_data[2] = &ufunc_erfcx_ptr[2*2]
ufunc_erfcx_data[3] = &ufunc_erfcx_ptr[2*3]
erfcx = np.PyUFunc_FromFuncAndData(ufunc_erfcx_loops, ufunc_erfcx_data, ufunc_erfcx_types, 4, 1, 1, 0, "erfcx", ufunc_erfcx_doc, 0)

cdef np.PyUFuncGenericFunction ufunc_erfi_loops[4]
cdef void *ufunc_erfi_ptr[8]
cdef void *ufunc_erfi_data[4]
cdef char ufunc_erfi_types[8]
cdef char *ufunc_erfi_doc = (
    "Imaginary error function, -i erf(i z)\n"
    "\n"
    ".. versionadded:: 0.12.0\n"
    "\n"
    "References\n"
    "----------\n"
    ".. [1] Steven G. Johnson, Faddeeva W function implementation.\n"
    "   http://ab-initio.mit.edu/Faddeeva")
ufunc_erfi_loops[0] = <np.PyUFuncGenericFunction>loop_d_d__As_f_f
ufunc_erfi_loops[1] = <np.PyUFuncGenericFunction>loop_d_d__As_d_d
ufunc_erfi_loops[2] = <np.PyUFuncGenericFunction>loop_D_D__As_F_F
ufunc_erfi_loops[3] = <np.PyUFuncGenericFunction>loop_D_D__As_D_D
ufunc_erfi_types[0] = <char>NPY_FLOAT
ufunc_erfi_types[1] = <char>NPY_FLOAT
ufunc_erfi_types[2] = <char>NPY_DOUBLE
ufunc_erfi_types[3] = <char>NPY_DOUBLE
ufunc_erfi_types[4] = <char>NPY_CFLOAT
ufunc_erfi_types[5] = <char>NPY_CFLOAT
ufunc_erfi_types[6] = <char>NPY_CDOUBLE
ufunc_erfi_types[7] = <char>NPY_CDOUBLE
ufunc_erfi_ptr[2*0] = <void*>_func_faddeeva_erfi
ufunc_erfi_ptr[2*0+1] = <void*>(<char*>"erfi")
ufunc_erfi_ptr[2*1] = <void*>_func_faddeeva_erfi
ufunc_erfi_ptr[2*1+1] = <void*>(<char*>"erfi")
ufunc_erfi_ptr[2*2] = <void*>_func_faddeeva_erfi_complex
ufunc_erfi_ptr[2*2+1] = <void*>(<char*>"erfi")
ufunc_erfi_ptr[2*3] = <void*>_func_faddeeva_erfi_complex
ufunc_erfi_ptr[2*3+1] = <void*>(<char*>"erfi")
ufunc_erfi_data[0] = &ufunc_erfi_ptr[2*0]
ufunc_erfi_data[1] = &ufunc_erfi_ptr[2*1]
ufunc_erfi_data[2] = &ufunc_erfi_ptr[2*2]
ufunc_erfi_data[3] = &ufunc_erfi_ptr[2*3]
erfi = np.PyUFunc_FromFuncAndData(ufunc_erfi_loops, ufunc_erfi_data, ufunc_erfi_types, 4, 1, 1, 0, "erfi", ufunc_erfi_doc, 0)

cdef np.PyUFuncGenericFunction ufunc_wofz_loops[2]
cdef void *ufunc_wofz_ptr[4]
cdef void *ufunc_wofz_data[2]
cdef char ufunc_wofz_types[4]
cdef char *ufunc_wofz_doc = (
    "y=wofz(z) returns the value of the fadeeva function for complex argument\n"
    "z: exp(-z**2)*erfc(-i*z)\n"
    "\n"
    "References\n"
    "----------\n"
    ".. [1] Steven G. Johnson, Faddeeva W function implementation.\n"
    "   http://ab-initio.mit.edu/Faddeeva")
ufunc_wofz_loops[0] = <np.PyUFuncGenericFunction>loop_D_D__As_F_F
ufunc_wofz_loops[1] = <np.PyUFuncGenericFunction>loop_D_D__As_D_D
ufunc_wofz_types[0] = <char>NPY_CFLOAT
ufunc_wofz_types[1] = <char>NPY_CFLOAT
ufunc_wofz_types[2] = <char>NPY_CDOUBLE
ufunc_wofz_types[3] = <char>NPY_CDOUBLE
ufunc_wofz_ptr[2*0] = <void*>_func_faddeeva_w
ufunc_wofz_ptr[2*0+1] = <void*>(<char*>"wofz")
ufunc_wofz_ptr[2*1] = <void*>_func_faddeeva_w
ufunc_wofz_ptr[2*1+1] = <void*>(<char*>"wofz")
ufunc_wofz_data[0] = &ufunc_wofz_ptr[2*0]
ufunc_wofz_data[1] = &ufunc_wofz_ptr[2*1]
wofz = np.PyUFunc_FromFuncAndData(ufunc_wofz_loops, ufunc_wofz_data, ufunc_wofz_types, 2, 1, 1, 0, "wofz", ufunc_wofz_doc, 0)


#
# Error handling system
#

cimport sf_error

cdef extern from "numpy/ufuncobject.h":
    int PyUFunc_getfperr() nogil

cdef public int wrap_PyUFunc_getfperr() nogil:
    """
    Call PyUFunc_getfperr in a context where PyUFunc_API array is initialized;
    this avoids messing with the UNIQUE_SYMBOL #defines
    """
    return PyUFunc_getfperr()

def _errprint(inflag=None):
    """
    errprint(flag=None)

    Sets or returns the error printing flag for special functions.

    Parameters
    ----------
    flag : bool, optional
        Whether warnings concerning evaluation of special functions in
        scipy.special are shown. If omitted, no change is made to the
        current setting.

    Returns
    -------
    old_flag
        Previous value of the error flag

    """
    if inflag is not None:
        return sf_error.set_print(int(bool(inflag)))
    else:
        return sf_error.get_print()


# distutils: language = c++

