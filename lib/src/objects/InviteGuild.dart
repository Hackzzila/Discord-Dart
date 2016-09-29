import '../../discord.dart';

/// A mini guild object for invites.
class InviteGuild {
  /// The guild's ID.
  String id;

  /// The guild's name.
  String name;

  /// The guild's spash if any.
  String spash;

  /// A timestamp for when the guild was created.
  DateTime createdAt;

  /// Constructs a new [InviteGuild].
  InviteGuild(Map<String, dynamic> data) {
    this.id = data['id'];
    this.name = data['name'];
    this.spash = data['splash_hash'];
    this.createdAt = getDate(this.id);
  }

  /// Returns a string representation of this object.
  @override
  String toString() {
    return this.name;
  }
}