public class TestBook {
    public static void main(String[] args) {
        Author anAuthor = new Author("Vũ Minh Quân", "quanvm18@1tek.com", 'm');

        System.out.println(anAuthor);
        anAuthor.setEmail("vmquan03@2tek.com");
        System.out.println(anAuthor);

        Book aBook = new Book("Java for dummy", anAuthor, 19.95, 1000);
        Book anotherBook = new Book("More Java for dummy", new Author("John Doe", "john.doe@example.com", 'm'), 29.95, 888);

        System.out.println(aBook);
        System.out.println(anotherBook);

        String authorName = aBook.getAuthorName();
        String authorEmail = aBook.getAuthorEmail();
        char authorGender = aBook.getAuthorGender();

        System.out.println("Author Name: " + authorName);
        System.out.println("Author Email: " + authorEmail);
        System.out.println("Author Gender: " + authorGender);

    }
}
