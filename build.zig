const std = @import("std");

const glfw = @import("libs/glfw/build.zig");
// const vkgen = @import("libs/vulkan/generator/index.zig");

pub fn build(b: *std.build.Builder) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.standardReleaseOptions();

    const exe = b.addExecutable("half-full", "src/main.zig");
    exe.setTarget(target);
    exe.setBuildMode(mode);
    exe.install();

    // glfw
    exe.addPackagePath("glfw", "libs/glfw/src/main.zig");
    glfw.link(b, exe, .{});

    // // NOTE: Removed vk.zig generation because it takes a long time
    // const gen = vkgen.VkGenerateStep.init(b, "libs/vulkan/vk.xml", "vk.zig");
    // exe.addPackage(gen.package);

    // NOTE: instead we just vendor the generated file
    exe.addPackagePath("vulkan", "libs/vulkan/vk.zig");

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        run_cmd.addArgs(args);
    }

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);

    const exe_tests = b.addTest("src/main.zig");
    exe_tests.setTarget(target);
    exe_tests.setBuildMode(mode);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&exe_tests.step);
}
