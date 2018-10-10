#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

vendor/k8s.io/code-generator/generate-groups.sh \
deepcopy \
github.com/literalice/serow/serow-operator/pkg/generated \
github.com/literalice/serow/serow-operator/pkg/apis \
serow:v1alpha1 \
--go-header-file "./tmp/codegen/boilerplate.go.txt"
