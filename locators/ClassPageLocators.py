# Class Page Locators

CLASS_CODE_INPUT = "css:input[placeholder=\"Mã lớp\"]"
CLASS_NAME_INPUT = "css:input[placeholder=\"Tên lớp\"]"
CLASS_SUBMIT = "xpath://form[.//input[@placeholder=\"Mã lớp\"]]//button[@type=\"submit\"]"
CLASS_ITEM_TEMPLATE = "xpath://article[contains(@class,\"class-item\")][.//strong[normalize-space()=\"{class_code}\"]]"
CLASS_ACTION_TEMPLATE = "xpath://article[contains(@class,\"class-item\")][.//strong[normalize-space()=\"{class_code}\"]]//button[normalize-space()=\"{action_text}\"]"
