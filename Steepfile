D = Steep::Diagnostic

target :lib do
  signature "sig"
  ignore_signature "sig/test"

  check "app"
end

target :test do
  unreferenced!                     # Skip type checking the `lib` code when types in `test` target is changed
  signature "sig"                   # Put RBS files for tests under `sig/test`
  check "test"                      # Type check Ruby scripts under `test`

  configure_code_diagnostics(D::Ruby.lenient)      # Weak type checking for test code
end
