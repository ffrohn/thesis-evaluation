# Tools used for the evaluation 
* [AProVE](https://ffrohn.github.io/thesis-evaluation/aprove.jar)
* [APRON](https://ffrohn.github.io/thesis-evaluation/apron.zip) (dependency of KoAT)
* [CoFloCo](https://ffrohn.github.io/thesis-evaluation/cofloco) (statically linked)
* [KoAT](https://ffrohn.github.io/thesis-evaluation/koat.native)
* [LoAT](https://ffrohn.github.io/thesis-evaluation/loat-static) (statically linked)
* [MiniSmt](https://ffrohn.github.io/thesis-evaluation/minismt) (dependency of TCT)
* [TCT](https://ffrohn.github.io/thesis-evaluation/tct-trs)
* [Z3](https://ffrohn.github.io/thesis-evaluation/z3.zip) (dependency of AProVE, KoAT, and TCT)

# AProVE strategies used for the evaluation
* [CDT](https://ffrohn.github.io/thesis-evaluation/cdt.strategy)
* constant bounds
  * [standalone](https://ffrohn.github.io/thesis-evaluation/constant.strategy)
  * [with strategy switching](https://ffrohn.github.io/thesis-evaluation/constant-switch.strategy)
* [detect extra variables on right-hand sides](https://ffrohn.github.io/thesis-evaluation/extra-vars.strategy)
* induction technique
  * [standalone](https://ffrohn.github.io/thesis-evaluation/induction-bare.strategy)
  * [with argument filtering](https://ffrohn.github.io/thesis-evaluation/induction-filter.strategy)
  * [with indefinite lemmas](https://ffrohn.github.io/thesis-evaluation/induction-indefinite.strategy)
  * [with argument filtering and indefinite lemmas](https://ffrohn.github.io/thesis-evaluation/induction.strategy)
  * [with argument filtering, indefinite lemmas, and strategy switching](https://ffrohn.github.io/thesis-evaluation/induction-switch.strategy)
* loop detection
  * [standalone](https://ffrohn.github.io/thesis-evaluation/loops.strategy)
  * [with argument filtering](https://ffrohn.github.io/thesis-evaluation/loops-filter.strategy)
  * [with strategy switching](https://ffrohn.github.io/thesis-evaluation/loops-switch.strategy) 
* JBC
  * [lower bounds without SMT encoding](https://ffrohn.github.io/thesis-evaluation/jbc.strategy)
  * [lower bounds with SMT encoding](https://ffrohn.github.io/thesis-evaluation/jbc-smt.strategy)
  * [upper bounds](https://ffrohn.github.io/thesis-evaluation/jbc-upper.strategy)
* [Matchbounds](https://ffrohn.github.io/thesis-evaluation/matchbounds.strategy)
* TCT
  * [preprocessing](https://ffrohn.github.io/thesis-evaluation/tct.strategy)
  * [preprocessing and strategy switching](https://ffrohn.github.io/thesis-evaluation/aprove-tct.strategy)
* [TRS via CoFloCo](https://ffrohn.github.io/thesis-evaluation/cofloco.strategy)
* [TRS via RNTS](https://ffrohn.github.io/thesis-evaluation/rnts.strategy)

# Details
* AProVE
  * flags that were used for all benchmarks
    * `-s $STRATEGY`
    * `-m benchmark`
    * `-t $TIMEOUT`
  * flag to infer upper bounds for JBC: `-O java::analysis_goal=time_complexity`
  * flags to infer lower bounds for JBC: `-O java::analysis_goal=time_complexity -O java::show_lower_bounds=true`
* analyzing TRSs with CoFloCo
  * additional option as RNTS-backend: `-compute_lbs no`
  * additional options as standalone-backend: `-compute_lbs no -compress_chains 2 -solve_fast`
* LoAT
  * flag to enable SMT encoding of limit problems: `--limit-smt`
* KoAT was invoked with `-smt-solver z3-internal`
* TCT
  * [script](https://ffrohn.github.io/thesis-evaluation/aprove-tct.sh) to couple AProVE's preprocessings with TCT
