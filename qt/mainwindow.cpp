#include "mainwindow.h"
#include "ui_mainwindow.h"
#include<iostream>
MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_clicked(){
    ui->patient_2->hide();
    ui->patient_3->hide();
    ui->patient_4->hide();

    int pos_x = ui->patient_1->pos().x();
    int pos_y = ui->patient_1->pos().y();
    int lekarz_ogolny = 0;
    int okulista = 1;
    int ortopeda = 2;
    int wybor = lekarz_ogolny;
    if(pos_x < 200)
        ui->patient_1->move(QPoint(pos_x+10,pos_y));
    else if(pos_x!=360 && pos_y< 100)
        ui->patient_1->move(QPoint(pos_x+10,pos_y));
    else if(pos_x>=190 && pos_x <=360)
        ui->patient_1->move(QPoint(pos_x,pos_y-10));

    if(wybor==lekarz_ogolny && pos_x==360){
        ui->patient_1->move(QPoint(pos_x,pos_y-10));
    }else if(wybor==ortopeda && pos_x==360){
        ui->patient_1->move(QPoint(pos_x,pos_y+10));
    }else{
        ui->patient_1->move(QPoint(pos_x+10,pos_y));
    }

    std::cout << pos_x << ", " << pos_y << std::endl;

}
