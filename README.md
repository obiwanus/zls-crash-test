# zls-crash-test

To reproduce the crash on Windows:

- Open src/main.zig
- Try to jump to the definition of `vk.ApplicationInfo` on line 15
- Crashes consistently with the following output:

```
[Info  - 12:03:44 pm] [info-main] No config file zls.json found.
[Info  - 12:03:44 pm] [info-main] Using zig executable C:\Users\ivan\Programs\zig-windows-x86_64-0.9.0\zig.exe
[Info  - 12:03:44 pm] [info-main] Using zig lib path 'C:\Users\ivan\Programs\zig-windows-x86_64-0.9.0\lib'
[Info  - 12:03:44 pm] [info-main] zls initialized
[Info  - 12:03:44 pm] [info-main] ClientCapabilities{ .supports_snippets = true, .supports_semantic_tokens = true, .hover_supports_md = true, .completion_doc_supports_md = true }
[Info  - 12:03:44 pm] [info-main] Using offset encoding: utf16
thread 1584 panic: index out of bounds
Unable to dump stack trace: FileNotFound
[Info  - 12:04:25 pm] Connection to server got closed. Server will restart.
[Error - 12:04:25 pm] Request textDocument/documentSymbol failed.
Error: Connection got disposed.
	at Object.dispose (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\connection.js:1044:27)
	at Object.dispose (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-languageclient\lib\common\client.js:73:35)
	at LanguageClient.handleConnectionClosed (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-languageclient\lib\common\client.js:2352:42)
	at LanguageClient.handleConnectionClosed (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-languageclient\lib\node\main.js:155:15)
	at closeHandler (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-languageclient\lib\common\client.js:2339:18)
	at CallbackList.invoke (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\events.js:55:39)
	at Emitter.fire (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\events.js:117:36)
	at closeHandler (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\connection.js:256:26)
	at CallbackList.invoke (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\events.js:55:39)
	at Emitter.fire (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\events.js:117:36)
	at StreamMessageReader.fireClose (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\messageReader.js:40:27)
	at Socket.<anonymous> (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\messageReader.js:125:42)
	at Socket.emit (events.js:327:22)
	at Pipe.<anonymous> (net.js:673:12)
[Info  - 12:04:25 pm] [info-main] No config file zls.json found.
[Info  - 12:04:25 pm] [info-main] Using zig executable C:\Users\ivan\Programs\zig-windows-x86_64-0.9.0\zig.exe
[Info  - 12:04:25 pm] [info-main] Using zig lib path 'C:\Users\ivan\Programs\zig-windows-x86_64-0.9.0\lib'
[Info  - 12:04:25 pm] [info-main] zls initialized
[Info  - 12:04:25 pm] [info-main] ClientCapabilities{ .supports_snippets = true, .supports_semantic_tokens = true, .hover_supports_md = true, .completion_doc_supports_md = true }
[Info  - 12:04:25 pm] [info-main] Using offset encoding: utf16
thread 11156 panic: index out of bounds
Unable to dump stack trace: FileNotFound
[Info  - 12:04:27 pm] Connection to server got closed. Server will restart.
[Error - 12:04:27 pm] Request textDocument/documentSymbol failed.
Error: Connection got disposed.
	at Object.dispose (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\connection.js:1044:27)
	at Object.dispose (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-languageclient\lib\common\client.js:73:35)
	at LanguageClient.handleConnectionClosed (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-languageclient\lib\common\client.js:2352:42)
	at LanguageClient.handleConnectionClosed (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-languageclient\lib\node\main.js:155:15)
	at closeHandler (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-languageclient\lib\common\client.js:2339:18)
	at CallbackList.invoke (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\events.js:55:39)
	at Emitter.fire (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\events.js:117:36)
	at closeHandler (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\connection.js:256:26)
	at CallbackList.invoke (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\events.js:55:39)
	at Emitter.fire (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\events.js:117:36)
	at StreamMessageReader.fireClose (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\messageReader.js:40:27)
	at Socket.<anonymous> (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\messageReader.js:125:42)
	at Socket.emit (events.js:327:22)
	at Pipe.<anonymous> (net.js:673:12)
[Error - 12:04:27 pm] Request textDocument/documentSymbol failed.
Error: Connection got disposed.
	at Object.dispose (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\connection.js:1044:27)
	at Object.dispose (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-languageclient\lib\common\client.js:73:35)
	at LanguageClient.handleConnectionClosed (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-languageclient\lib\common\client.js:2352:42)
	at LanguageClient.handleConnectionClosed (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-languageclient\lib\node\main.js:155:15)
	at closeHandler (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-languageclient\lib\common\client.js:2339:18)
	at CallbackList.invoke (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\events.js:55:39)
	at Emitter.fire (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\events.js:117:36)
	at closeHandler (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\connection.js:256:26)
	at CallbackList.invoke (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\events.js:55:39)
	at Emitter.fire (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\events.js:117:36)
	at StreamMessageReader.fireClose (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\messageReader.js:40:27)
	at Socket.<anonymous> (c:\Users\ivan\.vscode\extensions\augusterame.zls-vscode-1.0.4\node_modules\vscode-jsonrpc\lib\common\messageReader.js:125:42)
	at Socket.emit (events.js:327:22)
	at Pipe.<anonymous> (net.js:673:12)
[Info  - 12:04:27 pm] [info-main] No config file zls.json found.
[Info  - 12:04:27 pm] [info-main] Using zig executable C:\Users\ivan\Programs\zig-windows-x86_64-0.9.0\zig.exe
[Info  - 12:04:27 pm] [info-main] Using zig lib path 'C:\Users\ivan\Programs\zig-windows-x86_64-0.9.0\lib'
[Info  - 12:04:27 pm] [info-main] zls initialized
[Info  - 12:04:27 pm] [info-main] ClientCapabilities{ .supports_snippets = true, .supports_semantic_tokens = true, .hover_supports_md = true, .completion_doc_supports_md = true }
[Info  - 12:04:27 pm] [info-main] Using offset encoding: utf16
```
