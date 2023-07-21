package com.bank.repository;

import com.bank.model.Notice;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NoticeRepository extends CrudRepository<Notice, Long> {

    @Query(value= "find Notice n where CURDATE() BETWEEN noticBegDt AND noticEndDt")
    List<Notice> findAllActiveNotices();
}
