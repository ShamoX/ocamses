open Int64
open Mpi

(* Those variable are usable from anywhere including this module...
 * FIXME: I think this should be remade in a more modern form.
 * *)
module Poisson_commons =
  sig
    val phi : float array       (* Potential gravity *)
    val phi_old : float array   (* previous potential gravity *)
    val rho : float array       (* Density *)
    val f : float array array   (* 3-force - This is stored in 2 dimensionnal
                                   array, because 2 dimensions will be wrapped
                                   to one. *)

    val rho_top : float array   (* Density at last CIC level ?? Explanation *)

    (* Multigrid lookup table for amr -> mg index mapping *)
    val lookup_mg : int64 array (* lookup table *)

    (* Communicator arrays for multigrid levels *)
    val active_mg : communicator array array
    val emission_mg : communicator array array

    val levelmin_mg : int (* Minimum MG level *)

    val safe_mode : bool array (* Multigrid safety switch *)

    val multipole : float array (* Multipole coefficients *)
  end
