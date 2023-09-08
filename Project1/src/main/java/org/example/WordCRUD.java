package org.example;

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
    public int update() {

        if (list.isEmpty()) {
            System.out.println("------------------------------");
            System.out.println("데이터가 없습니다.");
            System.out.println("------------------------------");
            System.out.println();
            return -1;
        } else {
            System.out.print("=> 수정할 단어 검색 : ");
            String keyword = sc.next();
            System.out.println();

            ArrayList<Integer> idlist = this.listAll(keyword);

            if(idlist.isEmpty()){
                System.out.println("------------------------------");
                System.out.println("데이터가 없습니다.");
                System.out.println("------------------------------");
                System.out.println();
                return -1;
            }



            System.out.print("=> 수정할 번호 선택 : ");
            int id = sc.nextInt();
            sc.nextLine();

            if(idlist.size() < id || 0 > id){
                System.out.println();
                System.out.println("------------------------------");
                System.out.println("데이터가 없습니다.");
                System.out.println("------------------------------");
                System.out.println();
                return -1;
            }

            System.out.print("=> 뜻 입력 : ");
            String meaning = sc.nextLine();

            Word word = list.get(idlist.get(id - 1));

            word.setMeaning(meaning);
            System.out.println();
            System.out.println("------------------------------");
            System.out.println("단어가 수정되었습니다.");
            System.out.println("------------------------------");
            System.out.println();
        }
        return 0;
    }

    @Override
    public int delete() {
        if (list.isEmpty()) {
            System.out.println("------------------------------");
            System.out.println("데이터가 없습니다.");
            System.out.println("------------------------------");
            System.out.println();
        } else {
            System.out.print("=> 삭제할 단어 검색 : ");
            String keyword = sc.next();
            System.out.println();

            ArrayList<Integer> idlist = this.listAll(keyword);
            if (idlist.isEmpty())
                return 0;
            System.out.print("=> 삭제할 번호 선택 : ");
            int id = sc.nextInt();
            sc.nextLine();

            System.out.print("=> 정말로 삭제하실래요? (Y/N) : ");
            String answer = sc.next();
            System.out.println();

            if (answer.equalsIgnoreCase("Y")) {
                list.remove((int) idlist.get(id - 1));
                System.out.println("단어가 삭제되었습니다.");
                System.out.println();
            } else {
                System.out.println("취소되었습니다.");
                System.out.println();
            }

        }
        return 0;
    }


    @Override
    public void listAll() {
        if (list.isEmpty()) {
            System.out.println("------------------------------");
            System.out.println("데이터가 없습니다.");
            System.out.println("------------------------------");
            System.out.println();
        } else {
            System.out.println("------------------------------");
            for (int i = 0; i < list.size(); i++) {
                System.out.printf("%-2d ", i + 1);
                System.out.println(list.get(i).toString());
            }
            System.out.println("------------------------------");
            System.out.println();
        }
    }

    public void listAll(int level) {
        System.out.println("--------------------------------");
        for (int i = 0; i < list.size(); i++) {
            System.out.printf("%-2d ", i + 1);
            System.out.println(list.get(i).toString());
        }
        System.out.println("--------------------------------");
        System.out.println();
    }

    public ArrayList<Integer> listAll(String keyword) {

        ArrayList<Integer> idlist = new ArrayList<>();

        int count = 0;

        System.out.println("------------------------------");
        for (int i = 0; i < list.size(); i++) {
            String word = list.get(i).getWord(); // 영어 단어 가져오기

            if (word.contains(keyword)) {
                System.out.print(count + 1 + " ");
                System.out.println(list.get(i).toString());
                idlist.add(i);
                count++;
            } else {
                continue;
            }
        }
        if (idlist.isEmpty()) {
            System.out.println("데이터가 없습니다.");
            System.out.println("------------------------------");
            System.out.println();
        } else {
            System.out.println("------------------------------");
            System.out.println();

        }
        return idlist;
    }

    public void searchLevel() {
        // TODO Auto-generated method stub
        if (list.isEmpty()) {
            System.out.println("------------------------------");
            System.out.println("데이터가 없습니다.");
            System.out.println("------------------------------");
            System.out.println();
        } else {
            System.out.print("=> 원하는 레벨은? (1~3) ");
            int level = sc.nextInt();
            listAll(level);
        }

    }

    public void searchWord() {
        // TODO Auto-generated method stub
        if (list.isEmpty()) {
            System.out.println("------------------------------");
            System.out.println("데이터가 없습니다.");
            System.out.println("------------------------------");
            System.out.println();
        } else {
            System.out.print("=> 원하는 단어는? ");
            String keyword = sc.next();
            listAll(keyword);
        }
    }
}
