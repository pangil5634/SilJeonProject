package org.example;

import java.io.*;
import java.util.ArrayList;
import java.util.Scanner;

public class WordCRUD implements ICRUD {

    // 변수 선언
    ArrayList<Word> list; // 단어를 저장하고 있는 리스트
    Scanner sc; // 입력을 위한 Scanner 선언
    final String fname = "Dictonary.txt"; // 파일을 읽고 저장할 파일명을 저장하는 변수

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
            ArrayList<Integer> idlist = this.listAll(keyword);

            if (idlist.isEmpty()) {
                return 0;
            }


            System.out.print("=> 수정할 번호 선택 : ");
            int id = sc.nextInt();
            sc.nextLine();

            if (idlist.size() < id || 0 > id) {
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
            System.out.println("단어 수정이 성공적으로 되었습니다!!");
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
                System.out.println("선택한 단어 삭제 완료 !!!");
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
