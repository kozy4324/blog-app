D = Steep::Diagnostic

target :lib do
  signature "sig"
  ignore_signature "sig/test"

  check "app"
end

target :test do
  unreferenced!
  signature "sig"
  check "test"

  configure_code_diagnostics(D::Ruby.lenient)
end
