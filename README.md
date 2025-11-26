# AI Text Assistant

Prosty czat w Flutterze z modelową architekturą. Gotowy do podpięcia AI.  
Projekt pokazuje umiejętność integracji AI w aplikacji mobilnej oraz czystą strukturę kodu.

## Funkcje:
- Wysyłanie wiadomości przez użytkownika  
- Odpowiedź Mock AI („Otrzymałem Twoją wiadomość: …”) - demo
- Architektura z podziałem na warstwy:
  - UI (Flutter + widgets)  
  - State management (Riverpod)  
  - Logika chatu (ChatController + Provider)  
  - Warstwa serwisów (AIClient stub / przygotowana do podpięcia prawdziwego API)  
- Gotowość do podmiany mocka na prawdziwe AI — struktura plug-and-play

  ## Jak uruchomić:
  1. Sklonuj repozytorium
  2. W folderze uruchom (bash):
  - flutter pub get
  - flutter run
