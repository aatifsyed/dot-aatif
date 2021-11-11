#!/usr/bin/env bash
set -o errexit -o xtrace

go install github.com/tomwright/dasel/cmd/dasel
go install github.com/boyter/scc
GO111MODULE=on go install github.com/skanehira/docui

