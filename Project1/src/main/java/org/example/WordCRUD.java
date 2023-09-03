package org.example;

import java.io.BufferedReader;
import java.util.ArrayList;
import java.util.Scanner;

public class WordCRUD implements ICRUD {

    // 변수 선언
    ArrayList<Word> list;
    Scanner sc;

    // 생성자
    WordCRUD(Scanner sc) {
        list = new ArrayList<>();
        this.sc = sc;
    }

    @Override
    public Object add() {
        // 난이도, 새 단어 입력 받기
        System.out.print("=> 난이도 (1, 2, 3) & 새 단어 입력 : ");
        int level = sc.nextInt();
        String word = sc.nextLine();

        // 뜻 입력 받기
        System.out.print("뜻 입력 : ");
        String meaning = sc.nextLine();
        System.out.println();

        return new Word(0, level, word, meaning);
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
