Fizzbuzz問題を解きながらテスト駆動開発を理解しよう
====
    
    
##目的
  簡単なプログラム作成を通して、  
  テスト駆動開発のイメージをつかむ  

## 作業概要
　Fizzbuzz問題の解くプログラムをコーディングし、  
  GitHub上でレビュー

## 想定環境
　Ruby-2.2.0

## コーディング結果の導入
  git clone https://github.com/hajime-takubo/FizzbuzzTest.git [フォルダ名]

## テスト方法
  1.Guardを起動し、プログラムの変更を検知できるようにする  
    (対象はGuardfileに記載)     
    >bundle exec guard  

  2.プログラムを変更する  
    →Rspecによるテストが自動的に実行される

