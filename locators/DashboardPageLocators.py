# Dashboard Page Locators

DASHBOARD = "css:.app-container"
LOGOUT_BUTTON = "css:.logout-btn"
SIDEBAR_NAV_BUTTONS = "css:.sidebar-nav button"
SIDEBAR_MENU_TEMPLATE = "xpath://nav[contains(@class,\"sidebar-nav\")]//button[.//span[normalize-space()=\"{menu_text}\"]]"
PANEL_HEADING_TEMPLATE = "xpath://section[contains(@class,\"panel\")][.//h2[normalize-space()=\"{heading_text}\"]]"
TABLE_LOCATOR = "css:table"
BUTTON_WITH_TEXT_TEMPLATE = "xpath://button[normalize-space()=\"{button_text}\"]"
