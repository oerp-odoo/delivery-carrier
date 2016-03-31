# -*- coding: utf-8 -*-
@swisslux @setup @import

Feature: import master data

  @csv @regions
  Scenario: import specific regions
    Given "res.partner.region" is imported from CSV "setup/res.partner.region.csv" using delimiter ","

  @csv @zip
  Scenario: import specific regions
    Given "res.better.zip" is imported from CSV "setup/res.better.zip.csv" using delimiter ","

  @csv @product_categories
  Scenario: import product categories
    Given "product.category" is imported from CSV "setup/product.category.csv" using delimiter ","
    
  @csv @product_expenses
  Scenario: import products for expenses
    Given "product.product" is imported from CSV "setup/product_expenses.csv" using delimiter ","

  @csv @products @slow
  Scenario: import products
    Given "product.product" is imported from CSV "setup/product.product.csv" using delimiter ","
  
  @update_reception_text_product @product
  Scenario: set default product reception text
    Given I execute the SQL commands
    """;
    update product_template set receipt_checklist = '
    Technik (DRINGEND):
    Lieferumfang Logistik:

    Label aussen

    Labal innen

    Anleitungen D+F

    Merkblatt V5.0';
    """
