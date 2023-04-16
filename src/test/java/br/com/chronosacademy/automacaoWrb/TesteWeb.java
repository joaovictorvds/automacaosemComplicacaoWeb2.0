package br.com.chronosacademy.automacaoWrb;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import static org.junit.Assert.assertEquals;

public class TesteWeb {
    ChromeDriver driver;

    @Before
    public  void inicislizaTeste(){
        WebDriverManager. chromedriver().setup();
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.get("https://www.chronosacademy.com.br");
    }

    @Test
    public void primeiroTeste(){
        String xpathtitulo= "//section[2]//h4";
        WebElement txtTitulo = driver.findElement(By.xpath(xpathtitulo));
        String titulo = txtTitulo.getText();
        assertEquals("Porque Tempo É Conhecimento", titulo);
    }

    @After
    public  void  finalizaTeste() {
         driver.quit();
    }

}
