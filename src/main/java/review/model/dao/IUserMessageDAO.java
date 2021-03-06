package review.model.dao;

import review.model.entity.User;
import review.model.entity.UserMessage;

import java.util.List;

public interface IUserMessageDAO {

    void saveMessage(UserMessage userMessage);

    List<UserMessage> getAll();

    void deleteMessage(UserMessage userMessage);

    UserMessage getById(int id);

    UserMessage getByAdminBufferId(int id);

    int getCountNotReaded(User user);

}
