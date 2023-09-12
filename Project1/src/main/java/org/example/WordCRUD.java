package org.example;

import java.io.*;
import java.util.ArrayList;
import java.util.Scanner;

public class WordCRUD implements ICRUD {

    // 변수 선언
    ArrayList<Word> list; // 단어를 저장하고 있는 리스트
    Scanner sc; // 입력을 위한 Scanner 선언
    final String fname = "Dictonary.txt"; // 파일을 읽고 저장할 파일명을 저장하는 변수

    // SQL 구문 사용
    // SQL 구문을 담는 문자열 변수
    final String WORD_SELECTAll = "select * from dataList";
    final String WORD_SELECT = "select * from dataList where word like ? ";
    final String WORD_INSERT = "insert into dataList (level, word, meaning) "
            + "values (?, ?, ?) ";
    final String WORD_UPDATE = "update dataList set meaning=? where id=? ";
    final String WORD_DELETE = "delete from dataList where id = ?";

    // 생성자
    WordCRUD(Scanner sc) {
        list = new ArrayList<>(); // class 생성 시 새로운 arrayList를 할당시킨다.
        this.sc = sc; // 파라미터로 전해 받은 scanner 객체를 저장
    }

    @Override
    public Object add() {
        // 난이도, 새 단어 입력 받기
        System.out.print("=> 난이도 (1, 2, 3) & 새 단어 입력 : "); // 입력을 취한 출력 구문
        int level = sc.nextInt(); // 난이도 입력
        String word = sc.nextLine(); // 새 단어 입력
        word = word.trim(); // 문자열 양쪽 공백 제거

        // 뜻 입력 받기
        System.out.print("뜻 입력 : "); // 입력을 위한 출력 구문
        String meaning = sc.nextLine(); // 뜻 입력
        System.out.println();

        return new Word(0, level, word, meaning); // 입력 받은 난이도, 단어, 뜻을 Word 타입으로 반환
    }

    // 입력 받은 데이터를 리스트에 추가하는 메소드
    public void addItem() {
        Word one = (Word) add(); // casting
        list.add(one); // 리스트에 저장

        System.out.println("새 단어가 단어장에 추가되었습니다 !!!");
        System.out.println();
    }

    // 데이터를 수정하는 메소드
    @Override
    public int update() {

        if (list.isEmpty()) { // 참조할 데이터가 없는 경우
            System.out.println("------------------------------");
            System.out.println("데이터가 없습니다.");
            System.out.println("------------------------------");
            System.out.println();
            return -1;
        } else {
            System.out.print("=> 수정할 단어 검색 : "); // 입력을 위한 출력 구문
            String keyword = sc.next(); // 수정할 단어를 입력
            ArrayList<Integer> idlist = this.listAll(keyword); // 수정할 단어가 포함되어 있는 단어들을 모아둔 리스트

            if (idlist.isEmpty()) {
                return 0;
            }

            System.out.print("=> 수정할 번호 선택 : "); // 입력을 위한 출력 구문
            int id = sc.nextInt(); // 수정할 번호를 입력
            sc.nextLine();

            if (idlist.size() < id || 0 > id) { // 제공된 번호를 넘어간 경우
                System.out.println();
                System.out.println("------------------------------");
                System.out.println("데이터가 없습니다.");
                System.out.println("------------------------------");
                System.out.println();
                return -1;
            }

            System.out.print("=> 뜻 입력 : "); // 입력을 위한 출력 구문
            String meaning = sc.nextLine(); // 뜻 입력

            Word word = list.get(idlist.get(id - 1)); // 해당 번호의 데이터를 새로운 Word에 복사하기

            word.setMeaning(meaning); // 새로 입력된 뜻으로 변경ㅣ
            System.out.println();
            System.out.println("단어 수정이 성공적으로 되었습니다!!");
            System.out.println();
        }
        return 0;
    }

    // 데이터를 삭제하는 메소드
    @Override
    public int delete() {
        if (list.isEmpty()) { // 참조할 데이터가 없는 경우
            System.out.println("------------------------------");
            System.out.println("데이터가 없습니다.");
            System.out.println("------------------------------");
            System.out.println();
        } else {
            System.out.print("=> 삭제할 단어 검색 : "); // 입력을 위한 출력 구문
            String keyword = sc.next(); // 삭제할 단어 입력
            System.out.println();

            ArrayList<Integer> idlist = this.listAll(keyword); // 해당 단어가 있는 리스트를 생성

            if (idlist.isEmpty()) // 리스트가 없는 경우
                return 0;

            System.out.print("=> 삭제할 번호 선택 : "); // 입력을 위한 출력 구문
            int id = sc.nextInt(); // 삭제할 번호 입력
            sc.nextLine();

            System.out.print("=> 정말로 삭제하실래요? (Y/N) : "); // 입력을 위한 출력 구문
            String answer = sc.next(); // 선택을 입력
            System.out.println();

            if (answer.equalsIgnoreCase("Y")) { // Y인 경우
                list.remove((int) idlist.get(id - 1)); // 단어를 삭제
                System.out.println("선택한 단어 삭제 완료 !!!"); // 결과 출력
                System.out.println();
            } else {
                System.out.println("취소되었습니다."); // 결과 출력
                System.out.println();
            }

        }
        return 0;
    }


    // 데이터를 보여주는 메소드의 모음

    // listAll : 전체 데이터를 보여주는 메소드
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

    // 입력된 level에 맞춰진 리스트를 출력하는 메소드
    public void listAll(int level) {
        System.out.println("--------------------------------");
        for (int i = 0; i < list.size(); i++) {
            System.out.printf("%-2d ", i + 1); // index 출력
            System.out.println(list.get(i).toString()); // toString에 맞춰진 결과 출력
        }
        System.out.println("--------------------------------");
        System.out.println();
    }

    // 입력된 keyword에 맞춰진 리스트를 출력하는 메소드
    public ArrayList<Integer> listAll(String keyword) {

        ArrayList<Integer> idlist = new ArrayList<>(); // 새로운 idlist 생성

        int count = 0; // index를 위한 변수

        System.out.println("------------------------------");
        for (int i = 0; i < list.size(); i++) {
            String word = list.get(i).getWord(); // 영어 단어 가져오기

            if (word.contains(keyword)) { // 값을 하나 불러와서 있는지 없는지 구별
                System.out.print(count + 1 + " "); // index 출력
                System.out.println(list.get(i).toString()); // toString에 맞춰진 결과 출력
                idlist.add(i); // 값을 idlist에 저장
                count++; // 개수 증가
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
            System.out.println();
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
            System.out.println();
            listAll(keyword);
        }
    }

    /***
     * 파일로부터 데이터를 읽어오는 메소드.
     * @throws IOException
     * @throws FileNotFoundException
     */
    public void loadFile() throws IOException, FileNotFoundException {

        BufferedReader br = new BufferedReader(new FileReader(fname)); // FileReader
        String line = null;

        int count = 0;

        while (true) {
            line = br.readLine();

            if (line == null)
                break;

            String data[] = line.split("\\|");

            int level = Integer.parseInt(data[0]);
            String word = data[1];
            String meaning = data[2];
            list.add(new Word(0, level, word, meaning));
            count++;

        }

        br.close();
        System.out.println("===> " + count + "개 로딩완료!");
        System.out.println();

    }

    public void saveFile() throws IOException {
        // TODO Auto-generated method stub

//		PrintWriter pr = new PrintWriter(new FileWriter("test.txt"));
        PrintWriter pr = new PrintWriter(new FileWriter(fname));

        for (Word one : list) {
            pr.write(one.toFileString() + "\n");
            // write는 마지막에 개행문자가 없으므로 넣어주어야 한다.
        }

        pr.close();
        System.out.println("모든 단어 파일 저장 완료 !!!");
        System.out.println();

    }
}
