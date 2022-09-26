# Web Technologien // begleitendes Projekt Sommersemester 2022

Zum Modul Web Technologien gibt es ein begleitendes Projekt. Im Rahmen dieses Projekts werden wir von Veranstaltung zu Veranstaltung ein Projekt sukzessive weiter entwickeln und uns im Rahmen der Veranstaltung den Fortschritt anschauen, Code Reviews machen und Entwicklungsschritte vorstellen und diskutieren.

Als organisatorischen Rahmen für das Projekt nutzen wir GitHub Classroom. Inhaltlich befassen wir uns mit der Entwicklung einer kleinen Web-Anwendung für die Bearbeitung von Bildern. Hierbei steht weniger ein professioneller Konzeptions-, Entwurfs- und Entwicklungsprozess im Vordergrund, sondern vielmehr die sukzessive Weiterentwicklung einer Anwendung, das Ausprobieren, Vergleichen, Refactoren und die Freude an lauffähigem Code.

## Team

Author: [Sarfaroz Khakimov ](https://github.com/Sarfaroz)  
Reviewer: [Javad Alamdar ](https://github.com/javadalam)

## Deployment

  Um die live-Demo zu sehen folgende Link https://wt-beiboot-sarfarozkhakimov.netlify.app/ besuchen und die passende JSON Datei hochladen.

## Developing

 Für die lokale Entwicklung ist  Installation von [Node.js](https://nodejs.org/en/)(Version 14 oder 16) mit npm erforderlich.


### Abhängigkeiten installieren

1. Repository clonen.
2. Terminal öffnen und **cd** in das Repository Directory.
3. Ausführen folgende command um **npm** Packages zu installieren  :

```bash
$ npm install
```
### Commonly used npm scripts

```bash
# App im Entwicklungsmodus starten
$ nmp run dev

# Build app für die Produktionsnutzung
$ npm run build

# start production server
$ npm run start
```
## Setting up with Docker

Um die Anwendung in einem Container auszuführen, muss man die folgenden Befehle ausführen:

- Docker Desktop muss auf dem PC installiert sein

-  Image erstellen mit: `docker build -t <IMAGENAME> . `

- Den Container mit dem Image starten:  `docker run -p 8080:8080 --rm --name <CONTAINERNAME> <IMAGENAME>`

- Die Anwendung ist dann im Browser unter [http://localhost:8080](http://localhost:8080) zu finden.

## Dokumentation

Die wichtigsten Entscheidungen des Projekts wurden in Form von [Architectural Decision Records (ADRs) festgehalten .
