package org.example;

import java.io.BufferedReader;
import java.util.ArrayList;
import java.util.Scanner;

public class WordCRUD implements ICRUD{

    // 변수 선언
    ArrayList<Word> list;
    Scanner sc;

    // 생성자
    WordCRUD(Scanner sc ) {
        list = new ArrayList<>();
        this.sc = sc;
    }

    @Override
    public Object add() {

    }

    // 입력 받은 데이터를 리스트에 추가하는 메소드
    public void addItem() {
        Word one = (Word) add(); // casting
        list.add(one);
        System.out.println("새 단어가 단어장에 추가되었습니다 !!!");
        System.out.println();
    }

    @Override
    public int update(Object obj) {
        return 0;
    }

    @Override
    public int delete(Object obj) {
        return 0;
    }

    @Override
    public void selectOne(int id) {

    }

    public void listAll() {

    }


}
