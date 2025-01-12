import 'package:domain/features/vocabulary/entity/vocabulary_entity.dart';
import 'package:domain/features/vocabulary/repository/i_vocabulary_repository.dart';
import 'package:domain/locale_storage/i_user_local.dart';


class VocabularyRepository implements IVocabularyRepository {
  final IUserLocal _userLocal;

  VocabularyRepository(this._userLocal);

  @override
  List<VocabularyEntity> findUserMatchesVocabularies() {
    return wordData[_userLocal.language]?[_userLocal.level] ?? [];
  }

  final Map<String, Map<String, List<VocabularyEntity>>> wordData = {
    "English": {
      "A1 - Beginning": [
        VocabularyEntity(
            word: "Hello",
            definition: "A greeting",
            exampleSentence: "Hello, how are you?"),
        VocabularyEntity(
            word: "Goodbye",
            definition: "A farewell",
            exampleSentence: "Goodbye, see you later!"),
        VocabularyEntity(
            word: "Happy",
            definition: "Feeling joy",
            exampleSentence: "I am happy today."),
        VocabularyEntity(
            word: "Sad",
            definition: "Feeling sorrow",
            exampleSentence: "She felt sad after the movie."),
        VocabularyEntity(
            word: "Friend",
            definition: "A person you know well",
            exampleSentence: "She is my best friend."),
      ],
      "A2 - Elementary": [
        VocabularyEntity(
            word: "Book",
            definition: "A written work",
            exampleSentence: "I am reading a book."),
        VocabularyEntity(
            word: "School",
            definition: "A place of learning",
            exampleSentence: "I go to school every day."),
        VocabularyEntity(
            word: "Teacher",
            definition: "A person who teaches",
            exampleSentence: "The teacher is kind."),
        VocabularyEntity(
            word: "Student",
            definition: "A person who studies",
            exampleSentence: "He is a good student."),
        VocabularyEntity(
            word: "Classroom",
            definition: "A room for teaching",
            exampleSentence: "The classroom is clean."),
      ],
      "B1 - Intermediate": [
        VocabularyEntity(
            word: "Achieve",
            definition: "To successfully complete something",
            exampleSentence: "She worked hard to achieve her goals."),
        VocabularyEntity(
            word: "Challenge",
            definition: "A difficult task",
            exampleSentence: "This project is a big challenge."),
        VocabularyEntity(
            word: "Improve",
            definition: "To make something better",
            exampleSentence: "He wants to improve his English."),
        VocabularyEntity(
            word: "Opportunity",
            definition: "A chance to do something",
            exampleSentence: "This job is a great opportunity."),
        VocabularyEntity(
            word: "Success",
            definition: "Achieving a goal",
            exampleSentence: "Success requires hard work."),
      ],
      "B2 - Upper Intermediate": [
        VocabularyEntity(
            word: "Analyze",
            definition: "To examine something in detail",
            exampleSentence: "We need to analyze the data."),
        VocabularyEntity(
            word: "Benefit",
            definition: "An advantage",
            exampleSentence: "Exercise has many health benefits."),
        VocabularyEntity(
            word: "Consequence",
            definition: "A result of an action",
            exampleSentence: "The consequences of his actions were severe."),
        VocabularyEntity(
            word: "Evaluate",
            definition: "To judge the value of something",
            exampleSentence: "We need to evaluate the results."),
        VocabularyEntity(
            word: "Strategy",
            definition: "A plan to achieve a goal",
            exampleSentence: "The company has a new marketing strategy."),
      ],
      "C1 - Advanced": [
        VocabularyEntity(
            word: "Comprehensive",
            definition: "Complete and thorough",
            exampleSentence: "The report provides a comprehensive analysis."),
        VocabularyEntity(
            word: "Innovative",
            definition: "Introducing new ideas",
            exampleSentence:
                "The company is known for its innovative products."),
        VocabularyEntity(
            word: "Perspective",
            definition: "A particular attitude towards something",
            exampleSentence: "She has a unique perspective on the issue."),
        VocabularyEntity(
            word: "Significant",
            definition: "Important or noticeable",
            exampleSentence: "This discovery is significant for science."),
        VocabularyEntity(
            word: "Transform",
            definition: "To change completely",
            exampleSentence: "Technology has transformed our lives."),
      ],
    },
    "France": {
      "A1 - Beginning": [
        VocabularyEntity(
            word: "Bonjour",
            definition: "A greeting",
            exampleSentence: "Bonjour, comment ça va?"),
        VocabularyEntity(
            word: "Au revoir",
            definition: "A farewell",
            exampleSentence: "Au revoir, à bientôt!"),
        VocabularyEntity(
            word: "Merci",
            definition: "Thank you",
            exampleSentence: "Merci beaucoup!"),
        VocabularyEntity(
            word: "S'il vous plaît",
            definition: "Please",
            exampleSentence: "S'il vous plaît, donnez-moi un café."),
        VocabularyEntity(
            word: "Oui",
            definition: "Yes",
            exampleSentence: "Oui, je comprends."),
      ],
      "A2 - Elementary": [
        VocabularyEntity(
            word: "Livre",
            definition: "Book",
            exampleSentence: "Je lis un livre."),
        VocabularyEntity(
            word: "École",
            definition: "School",
            exampleSentence: "Je vais à l'école tous les jours."),
        VocabularyEntity(
            word: "Professeur",
            definition: "Teacher",
            exampleSentence: "Le professeur est gentil."),
        VocabularyEntity(
            word: "Étudiant",
            definition: "Student",
            exampleSentence: "Il est un bon étudiant."),
        VocabularyEntity(
            word: "Salle de classe",
            definition: "Classroom",
            exampleSentence: "La salle de classe est propre."),
      ],
      "B1 - Intermediate": [
        VocabularyEntity(
            word: "Réussir",
            definition: "To succeed",
            exampleSentence: "Elle travaille dur pour réussir."),
        VocabularyEntity(
            word: "Défi",
            definition: "Challenge",
            exampleSentence: "Ce projet est un grand défi."),
        VocabularyEntity(
            word: "Améliorer",
            definition: "To improve",
            exampleSentence: "Il veut améliorer son français."),
        VocabularyEntity(
            word: "Opportunité",
            definition: "Opportunity",
            exampleSentence: "Ce travail est une grande opportunité."),
        VocabularyEntity(
            word: "Succès",
            definition: "Success",
            exampleSentence: "Le succès demande du travail."),
      ],
      "B2 - Upper Intermediate": [
        VocabularyEntity(
            word: "Analyser",
            definition: "To analyze",
            exampleSentence: "Nous devons analyser les données."),
        VocabularyEntity(
            word: "Avantage",
            definition: "Benefit",
            exampleSentence:
                "L'exercice a de nombreux avantages pour la santé."),
        VocabularyEntity(
            word: "Conséquence",
            definition: "Consequence",
            exampleSentence: "Les conséquences de ses actions étaient graves."),
        VocabularyEntity(
            word: "Évaluer",
            definition: "To evaluate",
            exampleSentence: "Nous devons évaluer les résultats."),
        VocabularyEntity(
            word: "Stratégie",
            definition: "Strategy",
            exampleSentence:
                "L'entreprise a une nouvelle stratégie marketing."),
      ],
      "C1 - Advanced": [
        VocabularyEntity(
            word: "Complet",
            definition: "Comprehensive",
            exampleSentence: "Le rapport fournit une analyse complète."),
        VocabularyEntity(
            word: "Innovant",
            definition: "Innovative",
            exampleSentence:
                "L'entreprise est connue pour ses produits innovants."),
        VocabularyEntity(
            word: "Perspective",
            definition: "Perspective",
            exampleSentence: "Elle a une perspective unique sur le problème."),
        VocabularyEntity(
            word: "Significatif",
            definition: "Significant",
            exampleSentence:
                "Cette découverte est significative pour la science."),
        VocabularyEntity(
            word: "Transformer",
            definition: "To transform",
            exampleSentence: "La technologie a transformé nos vies."),
      ],
    },
    "Spain": {
      "A1 - Beginning": [
        VocabularyEntity(
            word: "Hola",
            definition: "A greeting",
            exampleSentence: "Hola, ¿cómo estás?"),
        VocabularyEntity(
            word: "Adiós",
            definition: "A farewell",
            exampleSentence: "Adiós, nos vemos pronto."),
        VocabularyEntity(
            word: "Gracias",
            definition: "Thank you",
            exampleSentence: "Gracias por tu ayuda."),
        VocabularyEntity(
            word: "Por favor",
            definition: "Please",
            exampleSentence: "Por favor, dame un café."),
        VocabularyEntity(
            word: "Sí", definition: "Yes", exampleSentence: "Sí, entiendo."),
      ],
      "A2 - Elementary": [
        VocabularyEntity(
            word: "Libro",
            definition: "Book",
            exampleSentence: "Estoy leyendo un libro."),
        VocabularyEntity(
            word: "Escuela",
            definition: "School",
            exampleSentence: "Voy a la escuela todos los días."),
        VocabularyEntity(
            word: "Profesor",
            definition: "Teacher",
            exampleSentence: "El profesor es muy amable."),
        VocabularyEntity(
            word: "Estudiante",
            definition: "Student",
            exampleSentence: "Él es un buen estudiante."),
        VocabularyEntity(
            word: "Aula",
            definition: "Classroom",
            exampleSentence: "El aula está limpia."),
      ],
      "B1 - Intermediate": [
        VocabularyEntity(
            word: "Lograr",
            definition: "To achieve",
            exampleSentence: "Ella trabaja duro para lograr sus metas."),
        VocabularyEntity(
            word: "Desafío",
            definition: "Challenge",
            exampleSentence: "Este proyecto es un gran desafío."),
        VocabularyEntity(
            word: "Mejorar",
            definition: "To improve",
            exampleSentence: "Quiero mejorar mi español."),
        VocabularyEntity(
            word: "Oportunidad",
            definition: "Opportunity",
            exampleSentence: "Este trabajo es una gran oportunidad."),
        VocabularyEntity(
            word: "Éxito",
            definition: "Success",
            exampleSentence: "El éxito requiere esfuerzo."),
      ],
      "B2 - Upper Intermediate": [
        VocabularyEntity(
            word: "Analizar",
            definition: "To analyze",
            exampleSentence: "Necesitamos analizar los datos."),
        VocabularyEntity(
            word: "Beneficio",
            definition: "Benefit",
            exampleSentence:
                "El ejercicio tiene muchos beneficios para la salud."),
        VocabularyEntity(
            word: "Consecuencia",
            definition: "Consequence",
            exampleSentence:
                "Las consecuencias de sus acciones fueron graves."),
        VocabularyEntity(
            word: "Evaluar",
            definition: "To evaluate",
            exampleSentence: "Debemos evaluar los resultados."),
        VocabularyEntity(
            word: "Estrategia",
            definition: "Strategy",
            exampleSentence:
                "La empresa tiene una nueva estrategia de marketing."),
      ],
      "C1 - Advanced": [
        VocabularyEntity(
            word: "Completo",
            definition: "Comprehensive",
            exampleSentence: "El informe proporciona un análisis completo."),
        VocabularyEntity(
            word: "Innovador",
            definition: "Innovative",
            exampleSentence:
                "La empresa es conocida por sus productos innovadores."),
        VocabularyEntity(
            word: "Perspectiva",
            definition: "Perspective",
            exampleSentence:
                "Ella tiene una perspectiva única sobre el problema."),
        VocabularyEntity(
            word: "Significativo",
            definition: "Significant",
            exampleSentence:
                "Este descubrimiento es significativo para la ciencia."),
        VocabularyEntity(
            word: "Transformar",
            definition: "To transform",
            exampleSentence: "La tecnología ha transformado nuestras vidas."),
      ],
    },
  };
}
