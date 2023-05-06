pub const ValueTree = @import("json/dynamic.zig").ValueTree;
pub const ObjectMap = @import("json/dynamic.zig").ObjectMap;
pub const Array = @import("json/dynamic.zig").Array;
pub const Value = @import("json/dynamic.zig").Value;
pub const Parser = @import("json/dynamic.zig").Parser;

pub const validate = @import("json/scanner.zig").validate;
pub const JsonError = @import("json/scanner.zig").JsonError;
pub const jsonReader = @import("json/scanner.zig").jsonReader;
pub const default_buffer_size = @import("json/scanner.zig").default_buffer_size;
pub const Token = @import("json/scanner.zig").Token;
pub const TokenType = @import("json/scanner.zig").TokenType;
pub const AllocWhen = @import("json/scanner.zig").AllocWhen;
pub const default_max_value_len = @import("json/scanner.zig").default_max_value_len;
pub const JsonReader = @import("json/scanner.zig").JsonReader;
pub const JsonScanner = @import("json/scanner.zig").JsonScanner;
pub const isNumberFormattedLikeAnInteger = @import("json/scanner.zig").isNumberFormattedLikeAnInteger;

pub const ParseOptions = @import("json/static.zig").ParseOptions;
pub const parseFromSlice = @import("json/static.zig").parseFromSlice;
pub const parseFromTokenSource = @import("json/static.zig").parseFromTokenSource;
pub const ParseError = @import("json/static.zig").ParseError;
pub const parseFree = @import("json/static.zig").parseFree;

pub const StringifyOptions = @import("json/stringify.zig").StringifyOptions;
pub const encodeJsonString = @import("json/stringify.zig").encodeJsonString;
pub const encodeJsonStringChars = @import("json/stringify.zig").encodeJsonStringChars;
pub const stringify = @import("json/stringify.zig").stringify;
pub const stringifyAlloc = @import("json/stringify.zig").stringifyAlloc;

pub const WriteStream = @import("json/write_stream.zig").WriteStream;
pub const writeStream = @import("json/write_stream.zig").writeStream;

// Deprecations
pub const parse = @compileError("Deprecated; use parseFromSlice() or parseFromTokenSource() instead.");
pub const StreamingParser = @compileError("Deprecated; use JsonScanner or JsonReader instead.");
pub const TokenStream = @compileError("Deprecated; use JsonScanner or JsonReader instead.");

test {
    _ = @import("json/test.zig");
    _ = @import("json/scanner.zig");
    _ = @import("json/write_stream.zig");
    _ = @import("json/dynamic.zig");
    _ = @import("json/static.zig");
    _ = @import("json/stringify.zig");
    _ = @import("json/JSONTestSuite.zig");
}
