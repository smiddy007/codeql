// generated by codegen/codegen.py
import codeql.swift.elements
import TestUtils

from DynamicSelfType x, string getDiagnosticsName, Type getCanonicalType, Type getStaticSelfType
where
  toBeTested(x) and
  not x.isUnknown() and
  getDiagnosticsName = x.getDiagnosticsName() and
  getCanonicalType = x.getCanonicalType() and
  getStaticSelfType = x.getStaticSelfType()
select x, "getDiagnosticsName:", getDiagnosticsName, "getCanonicalType:", getCanonicalType,
  "getStaticSelfType:", getStaticSelfType