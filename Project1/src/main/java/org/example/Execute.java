package org.example;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;

public class Execute {

    // 필요한 변수 선언
    Scanner sc = new Scanner(System.in);
    WordCRUD wordCRUD;

    // 생성자
    Execute() {
        wordCRUD = new WordCRUD(sc);
    }

    // 메인 run method
    public void run() {
        System.out.println("*** 영단어 마스터 ***"); // 처음에만 출력
        System.out.println();

        // 프로그램 반복
        while (true) {
            // 메뉴 입력 받기
            printMenu(); // 메뉴 내용 출력
            int menu = getMenu(); // 사용자로부터 메뉴 번호 입력 받기

            // 입력 받은 메뉴 번호 별 기능 실행
            if (menu == 0) {
                System.out.println("프로그램 종료! 다음에 만나요~");
                break;
            } else if (menu == 1) {
                wordCRUD.listAll();
            } else if (menu == 2) {
            } else if (menu == 3) {
            } else if (menu == 4) {
                wordCRUD.addItem();
            } else if (menu == 5) {
            } else if (menu == 6) {
            } else if (menu == 7) {
            }
        }
    }


    // 메뉴 출력 메소드
    public void printMenu() {
        System.out.println("********************\n" +
                "1. 모든 단어 보기\n" +
                "2. 수준별 단어 보기\n" +
                "3. 단어 검색\n" +
                "4. 단어 추가\n" +
                "5. 단어 수정\n" +
                "6. 단어 삭제\n" +
                "7. 파일 저장\n" +
                "0. 나가기\n" +
                "********************");
    }

    // 사용자로부터 메뉴 번호 입력 받는 메소드
    public int getMenu() {
        int menu; // 메뉴 번호

        System.out.print("=> 원하는 메뉴는? ");
        menu = sc.nextInt();
        System.out.println();

        return menu;
    }
}
