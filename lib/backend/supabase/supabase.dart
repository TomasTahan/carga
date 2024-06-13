import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://dbqlxdxaqauvcqyabrbw.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRicWx4ZHhhcWF1dmNxeWFicmJ3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM4MDI5NTAsImV4cCI6MjAxOTM3ODk1MH0.Eo5EAXt9ubWjHVR68z0XEaj5YnQ-u15V60zApO6JVZQ';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
