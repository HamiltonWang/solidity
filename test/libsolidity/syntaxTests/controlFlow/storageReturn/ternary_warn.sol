contract C {
    struct S { bool f; }
    S s;
    function f(bool flag) internal view returns (S storage c) {
        flag ? (c = s).f : false;
    }
    function g(bool flag) internal view returns (S storage c) {
        flag ? false : (c = s).f;
    }
}
// ----
// Warning: (96-107): This variable is of storage pointer type and might be returned without assignment.
// Warning: (200-211): This variable is of storage pointer type and might be returned without assignment.
