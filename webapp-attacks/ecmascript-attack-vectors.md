GlobalObjectPoisoning -- Global object poisoning
EvalArbitraryCodeExecution -- eval and the Function constructor allow arbitrary code execution
ArgumentsMaskedByVar -- function arguments array masked by var arguments on Opera
CrossScopeParameterModification -- arguments array allows modification of parameters
ArgumentsExposesCaller -- arguments Array and function object expose caller
FunctionMemberCrossScopeParameterAccess -- function object's arguments array expose arguments while call in progress
TypeofInconsistent -- typeof inconsistent for regular expressions
InaccessibleLocalVariables -- Inaccessible local variables
CatchBlocksScopeBleed -- catch blocks may cause global assignment, or local scope creep
GlobalScopeViaThis -- Global scope reachable via `this` from functions not invoked as methods
DeleteUnmasksGlobals -- Delete can unmask globals
FunctionConstructor -- Function constructor accessible via the 'constructor' property
ObjectEvalArbitraryCodeExecution -- `Object.eval` allows execution of unsanitized code on Firefox.
ObjectWatch -- Object.watch allows stealing and poisoning of otherwise restricted data
ObjectToSourceLeaksPrivates -- `Object.toSource` and uneval allow access to private fields
FunctionMethodsLeakGlobalScope -- `Function.call` or `Function.apply` can leak window with certain this-values.
ConditionalCompilationComments -- Conditional compilation may allow disabling of runtime checks.
StringObfuscationIsEasy -- Approaches that rely on detecting code for other languages in string literals is easy to defeat
ParentCircumventsScoping -- The javascript1.2 feature __parent__ circumvents normal scoping.
JsControlFormatChars -- `[:Cf:]` can be used hide code in string or comments.
InconsistentlyReservedKeywords -- Different reserved keyword set can cause parser ambiguity
ErrorExposesParameterValues -- The stack property of Error includes parameter values.
HiddenControlFlowHazard -- Seemingly safe Caja data computations may result in a control-flow transfer to a potential adversary.
RegexpsLeakMatchGlobally -- Any regular expression can match against the last string passed to any other
EvalBreaksClosureEncapsulation -- Eval extensions allow reaching into the scope chain of closures
PostIncrementAndDecrementCanReturnNonNumber -- Incorrect implementations of postincrement and postdecrement can cause confusion as to which property is being accessed
MisOptimizations -- Some interpreters try to optimize javascript before execution subtly changing the semantics of builtin operators (PostIncrementAndDecrementCanReturnNonNumber is a specific example)
CompoundAssignmentsCanReturnNonNumber -- The type of assignment expressions may not be correct.
FinallySkipped -- An exception that is thrown not inside a `try`/`catch` caught skips `finally` blocks.
