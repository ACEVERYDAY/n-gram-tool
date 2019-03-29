.class public Lcom/qwapi/adclient/android/AdRequestorPreferences;
.super Landroid/preference/PreferenceActivity;


# static fields
.field public static final ANINMATION_PREFERENCE:Ljava/lang/String; = "animation"

.field public static final BACKGROUND_COLOR_PREFERENCE:Ljava/lang/String; = "bgColor"

.field public static final BANNER_COUNT_PREFERENCE:Ljava/lang/String; = "bannercount"

.field public static final BANNER_PREFERENCE:Ljava/lang/String; = "banner"

.field public static final BATCH_PREFERENCE:Ljava/lang/String; = "batch"

.field public static final DISPLAY_MODE_PREFERENCE:Ljava/lang/String; = "display_mode"

.field public static final EXECUTION_MODE_PREFERENCE:Ljava/lang/String; = "executionMode"

.field public static final EXPANDABLE_COUNT_PREFERENCE:Ljava/lang/String; = "expandablecount"

.field public static final EXPANDABLE_PREFERENCE:Ljava/lang/String; = "expandable"

.field public static final INTERSTITIAL_COUNT_PREFERENCE:Ljava/lang/String; = "interstitialcount"

.field public static final INTERSTITIAL_PREFERENCE:Ljava/lang/String; = "interstitial"

.field public static final PLACEMENT_PREFERENCE:Ljava/lang/String; = "placement"

.field public static final PUBLISHER_ID_PREFERENCE:Ljava/lang/String; = "pubilsherid"

.field public static final REFRESH_INTERVAL_PREFERENCE:Ljava/lang/String; = "refreshinterval"

.field public static final SECTION_PREFERENCE:Ljava/lang/String; = "section"

.field public static final SITE_ID_PREFERENCE:Ljava/lang/String; = "siteid"

.field public static final TESTFLAG_PREFERENCE:Ljava/lang/String; = "testflag"

.field public static final TEXT_COLOR_PREFERENCE:Ljava/lang/String; = "textColor"

.field public static final TEXT_COUNT_PREFERENCE:Ljava/lang/String; = "textcount"

.field public static final TEXT_PREFERENCE:Ljava/lang/String; = "text"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 9

    const v8, 0x7f070004

    const v7, 0x7f070003

    const v6, 0x7f070002

    const v5, 0x7f070001

    const-string v4, "5"

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/AdRequestorPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "banner"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v3, 0x7f060005

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "interstitial"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f060007

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v3, 0x7f060008

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "text"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f06000a

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v3, 0x7f06000b

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v3, 0x7f060015

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    const-string v3, "placement"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    const v3, 0x7f060014

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    const-string v3, "Top"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "section"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f060010

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    const v3, 0x7f060011

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(I)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060017

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "batch"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f060018

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v3, 0x7f060019

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "bannercount"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f06001b

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    const v3, 0x7f06001c

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(I)V

    const-string v3, "5"

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "interstitialcount"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f06001e

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    const v3, 0x7f06001f

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(I)V

    const-string v3, "5"

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "textcount"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f060021

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    const v3, 0x7f060022

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(I)V

    const-string v3, "5"

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v3, 0x7f060038

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    const-string v3, "animation"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f060039

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    const v3, 0x7f06003a

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "bgColor"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f06003b

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    const v3, 0x7f06003c

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(I)V

    const-string v3, "black"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "textColor"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f06003d

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    const v3, 0x7f06003e

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(I)V

    const-string v3, "blue"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "testflag"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f060031

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v3, 0x7f060032

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    invoke-virtual {v2, v8}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v3, 0x7f060033

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    const-string v3, "display_mode"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f060034

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    const v3, 0x7f060035

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    const-string v3, "normal"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "refreshinterval"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f060036

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    const v3, 0x7f060037

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(I)V

    const-string v3, "30"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060028

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    const-string v3, "pubilsherid"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f060029

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    const v3, 0x7f06002a

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(I)V

    const-string v3, "b33eb94ffbce48bd8301a5476039cb63"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    const v3, 0x7f06002c

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    const-string v3, "siteid"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f06002d

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    const v3, 0x7f06002e

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(I)V

    const-string v3, "itest3"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v2, 0x7f06003f

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v3, 0x7f060040

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    const-string v3, "executionMode"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f060041

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    const v3, 0x7f060042

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/qwapi/adclient/android/AdRequestorPreferences;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/AdRequestorPreferences;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method
