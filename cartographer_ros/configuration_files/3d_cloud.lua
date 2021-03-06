-- Copyright 2018 The Cartographer Authors
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

include "map_builder_server.lua"

MAP_BUILDER_SERVER.map_builder.use_trajectory_builder_3d = true
MAP_BUILDER_SERVER.server_address = "0.0.0.0:55555"
MAP_BUILDER_SERVER.map_builder.pose_graph.optimize_every_n_nodes = 10
--MAP_BUILDER_SERVER.map_builder.pose_graph.constraint_builder.fast_correlative_scan_matcher_3d.linear_xy_search_window = 512
--MAP_BUILDER_SERVER.map_builder.pose_graph.constraint_builder.fast_correlative_scan_matcher_3d.linear_z_search_window = 4096
-- In our case, it is much better to set this value higher
MAP_BUILDER_SERVER.map_builder.pose_graph.constraint_builder.ceres_scan_matcher.translation_weight = 2e3
MAP_BUILDER_SERVER.map_builder.num_background_threads = 8;

return MAP_BUILDER_SERVER
