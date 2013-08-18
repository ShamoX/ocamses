open Batteries

module Amr_parameters =
struct
  let maxout = 1000
  and maxlevel = 100
  ;;


  (* Number of dimensions *)
  let ndim =
#ifdef NDIM
    NDIM
#else
    1
#endif
  ;;
  let twotondim = BatInt.pow 2 ndim
  and threetondim = BatInt.pow 3 ndim
  and twondim = 2 * ndim
  ;;

  (* Vectorization parameter *)

  let nvector =
#ifdef NVECTOR
    NVECTOR
#else
    500
#endif
  and nstride = 65536
  ;;


  (* Run control *)
  let verbose       = ref false ;; (* Write everything *)
  let hydro         = ref false ;; (* Hydro activated *)
  let pic           = ref false ;; (* Particle In Cell activated *)
  let poisson       = ref false ;; (* Poisson solver activated *)
  let cosmo         = ref false ;; (* Cosmology activated *)
  let star          = ref false ;; (* Star formation activated *)
  let sink          = ref false ;; (* Sink particles activated *)
  let rt            = ref false ;; (* Radiative transfer activated *)
  let debug         = ref false ;; (* Debug mode activated *)
  let static        = ref false ;; (* Static mode activated *)
  let tracer        = ref false ;; (* Tracer particles activated *)
  let lightcone     = ref false ;; (* Enable lightcone generation *)
  let clumpfind     = ref false ;; (* Enable clump finder *)
  let gas_analytics = ref false ;; (* Turn on a routine that outputs some gas-related data at every output *)
  let aton          = ref false ;; (* Enable ATON coarse grid radiation transfer *)

end
