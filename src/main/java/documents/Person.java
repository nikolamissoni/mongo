package documents;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Data
@Document("persons")
public class Person {

    @Id
    private String id;

    private String firstName;

    private String lastName;

}
