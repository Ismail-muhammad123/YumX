import 'package:flutter/material.dart';
import 'package:foodi/features/models/support_message.dart';
import 'package:intl/intl.dart';

class SupportMessagePage extends StatefulWidget {
  const SupportMessagePage({super.key});

  @override
  State<SupportMessagePage> createState() => _SupportMessagePageState();
}

class _SupportMessagePageState extends State<SupportMessagePage> {
  final TextEditingController _controller = TextEditingController();
  final List<Message> _messages = [
    Message(
      text: "Hi there!",
      time: DateTime.now().subtract(const Duration(minutes: 5)),
      isSentByMe: false,
      isRead: true,
    ),
    Message(
      text: "Hey! How's it going?",
      time: DateTime.now().subtract(const Duration(minutes: 4)),
      isSentByMe: true,
      isRead: true,
    ),
  ];

  void _sendMessage() {
    // TODO: implement send message
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _messages.add(
          Message(
            text: text,
            time: DateTime.now(),
            isSentByMe: true,
            isRead: false,
          ),
        );
        _controller.clear();
      });
    }
  }

  Widget _buildMessageBubble(Message message) {
    final timeText = DateFormat.Hm().format(message.time);
    return Align(
      alignment:
          message.isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        padding: const EdgeInsets.all(12.0),
        constraints: const BoxConstraints(maxWidth: 250),
        decoration: BoxDecoration(
          color:
              message.isSentByMe
                  ? Colors.orange.shade100
                  : Colors.grey.shade200,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(12),
            topRight: const Radius.circular(12),
            bottomLeft:
                message.isSentByMe
                    ? const Radius.circular(12)
                    : const Radius.circular(0),
            bottomRight:
                message.isSentByMe
                    ? const Radius.circular(0)
                    : const Radius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(message.text),
            const SizedBox(height: 6),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "${timeText} ${message.isRead ? "✓✓" : "✓"}",
                style: const TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 15,
              child: Placeholder(),
              // TODO: add user profile pic and name
            ),
            Text("Kabeer"),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              padding: const EdgeInsets.all(8),
              itemCount: _messages.length,
              itemBuilder: (_, index) {
                final message = _messages[_messages.length - 1 - index];
                return _buildMessageBubble(message);
              },
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Type a message",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.orange),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
