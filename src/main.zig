const std = @import("std");
const time = @import("std").time;
const rand = @import("std").rand;

var chars: []u32 = &[_]u32{};

fn addChars(additionals: []const u8) void {
    var c: u8 = 'a';
    while (c <= 'z') : (c += 1) {
        chars.append(@intCast(u32, c));
    }

    var c2: u8 = 'A';
    while (c2 <= 'Z') : (c2 += 1) {
        chars.append(@intCast(u32, c2));
    }
    // for (c: u8 = 'A'; c <= 'Z'; c += 1) {
    //     chars.append(c);
    // }

    switch (additionals) {
        "1" => {
            var s: u8 = '!';
            while (s <= '?') : (s += 1) {
                chars.append(@intCast(u32, s));
            }
        },
        "2" => {
            var n: u8 = '0';
            while (n <= '9') : (n += 1) {
                chars.append(@intCast(u32, n));
            }
        },
        "3" => {
            var s2: u8 = '!';
            var n2: u8 = '0';
            while (s2 <= '?') : (s2 += 1) {
                chars.append(@intCast(u32, s2));
            }
            while (n2 <= '9') : (n2 += 1) {
                chars.append(@intCast(u32, n2));
            }
        },
        _ => {
            std.debug.print("\nYour choice didn't meet any of the given choices so I didn't add any special/numeric characters\n", .{});
        },
    }
}

