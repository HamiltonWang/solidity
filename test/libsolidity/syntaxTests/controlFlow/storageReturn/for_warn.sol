contract C {
    struct S { bool f; }
    S s;
    function f() internal view returns (S storage c) {
        for(;; c = s) {
        }
    }
    function g() internal view returns (S storage c) {
        for(;;) {
            c = s;
        }
    }
}
// ----
// Warning: (87-98): This variable is of storage pointer type and might be returned without assignment.
// Warning: (182-193): This variable is of storage pointer type and might be returned without assignment.
