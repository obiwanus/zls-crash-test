const std = @import("std");

const glfw = @import("glfw");
const vk = @import("vulkan");

// const VulkanContext = @import("vulkan/context.zig").Context;

pub fn main() !void {
    try glfw.init(.{});
    defer glfw.terminate();

    const window = try glfw.Window.create(800, 600, "Half-Full", null, null, .{ .client_api = .no_api });
    defer window.destroy();

    vk.ApplicationInfo{};

    while (!window.shouldClose()) {
        try glfw.pollEvents();
    }
}
