package klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import klu.model.User;
@Repository
public interface UserRepository  extends JpaRepository<User, String>//String - PrimaryKey Datatype
{
	@Query("select count(u) from User u where u.username=:uname and u.password=:pwd")
	public String validate(@Param("uname") String uname, @Param("pwd") String pwd);
}
          