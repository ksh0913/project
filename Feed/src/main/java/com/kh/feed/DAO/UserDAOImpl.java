package com.kh.feed.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.kh.feed.DTO.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO {

    private static final Logger logger = LoggerFactory.getLogger(UserDAOImpl.class);
    private static final String namespace = "com.kh.feed.mapper.UserMapper";

    
    @Autowired
    private SqlSession sqlSession;

    @Override
    public void create(UserDTO user) throws Exception {
        try {
            logger.info("사용자를 추가합니다. 사용자 정보: {}", user);
            sqlSession.insert("com.kh.feed.DAO.UserMapper.signUp", user);
            logger.info("사용자 추가가 완료되었습니다.");
        } catch (Exception e) {
            logger.error("사용자 추가 중 오류가 발생했습니다.", e);
            throw e;
        }
    }

    @Override
    public UserDTO read(int userId) throws Exception {
        return sqlSession.selectOne("UserMapper.getUserProfile", userId);
    }

    @Override
    public void update(UserDTO user) throws Exception {
        sqlSession.update("UserMapper.updateUserProfile", user);
    }

    @Override
    public void delete(int userId) throws Exception {
        sqlSession.delete("UserMapper.deleteUser", userId);
    }

    @Override
    public List<UserDTO> listAll() throws Exception {
        return sqlSession.selectList("UserMapper.getAllUsers");
    }

    @Override
    public UserDTO readByUserIdId(String userIdId) throws Exception {
        return sqlSession.selectOne("UserMapper.getUserByUserIdId", userIdId);
    }
    
    @Override
    public UserDTO loginUser(String userIdId) throws Exception {
        return sqlSession.selectOne(namespace + ".loginUser", userIdId);
    }
}
