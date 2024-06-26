#!/usr/bin/env bash
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#

set -e

BUILD_OUTPUT="${KOGITO_HOME}"/build_output/

mkdir -p "${BUILD_OUTPUT}"

echo "Zip and copy scaffold project"
tar cf sonataflow-quarkus-app.tar -C "${PROJECT_ARTIFACT_ID}" .
cp -v sonataflow-quarkus-app.tar "${BUILD_OUTPUT}"

echo "Zip and copy maven repo"
cd "${KOGITO_HOME}"/.m2/repository/
tar cf sonataflow-maven-repo.tar .
cp -v sonataflow-maven-repo.tar "${BUILD_OUTPUT}"