#!/usr/bin/env bash

##
# Copyright 2018 The TAOS-CI Authors. All Rights Reserved.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#     http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

##
# @file config-plugins-audit.sh
# @brief add plugin modules for a github repository

###### plugins-base ###############################################################################################
echo "[MODULE] plugins-base: Plugin group that follow Apache license with good quality"
# Please append your plugin modules here.

module_name="pr-audit-build-tizen"
echo "[DEBUG] $module_name is started."
echo "[DEBUG] TAOS/$module_name: Check if Tizen rpm package is successfully generated."
echo "[DEBUG] Current path: $(pwd)."
source ${REFERENCE_REPOSITORY}/ci/standalone/plugins-base/$module_name.sh
# Note that do not append the below "$module_name" because build step is implemented as a built-in module partially
# $module_name
# echo "[DEBUG] $module_name is done."

# module_name="pr-audit-build-ubuntu"
# echo "[DEBUG] $module_name is started."
# echo "[DEBUG] TAOS/$module_name: Check if Ubuntu deb package is successfully generated."
# echo "[DEBUG] Current path: $(pwd)."
source ${REFERENCE_REPOSITORY}/ci/standalone/plugins-base/$module_name.sh
# Note that do not append the below "$module_name" because build step is implemented as a built-in module partially
# $module_name
# echo "[DEBUG] $module_name is done."

###### plugins-good ###############################################################################################
echo "[MODULE] plugins-good: Plugin group that follow Apache license with good quality"
# Please append your plugin modules here.






###### plugins-ugly ################################################################################################
echo "[MODULE] plugins-ugly: Plugin group that does not have evaluation and aging test enough"
# Please append your plugin modules here.

# module_name="pr-audit-resource"
# echo "[DEBUG] $module_name is started."
# echo "[DEBUG] TAOS/$module_name: Check if there are not-installed resource files."
# echo "[DEBUG] Current path: $(pwd)."
# source ${REFERENCE_REPOSITORY}/ci/standalone/plugins-ugly/$module_name.sh
# $module_name
# echo "[DEBUG] $module_name is done."

