// Include Fake lib
// Assumes NuGet has been used to fetch the FAKE libraries
#r "packages/FAKE/tools/FakeLib.dll"
open Fake

// Properties
let buildDir = "./build/"

// Targets
Target "Clean" (fun _ ->
    CleanDir buildDir
)

Target "Default" (fun _ ->
    trace "Hello World from FAKE"
)

// Dependencies
"Clean"
  ==> "Default"

// start build
RunTargetOrDefault "Default"
