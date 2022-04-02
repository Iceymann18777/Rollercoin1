.class public Lcom/appsgeyser/multiTabApp/SettingsActivity;
.super Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;
.source "SettingsActivity.java"


# instance fields
.field private onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/SettingsActivity;)Landroid/content/SharedPreferences;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity;->settings:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14

    .line 40
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/utils/ThemeUtils;->setCurrentThemeWithNoActionBar(Landroid/app/Activity;)V

    .line 41
    invoke-super {p0, p1}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150001

    .line 42
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->addPreferencesFromResource(I)V

    .line 43
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity;->settings:Landroid/content/SharedPreferences;

    .line 44
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    .line 45
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    const-string v0, "time_from"

    .line 46
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "time_to"

    .line 47
    invoke-virtual {p0, v1}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "notifications_category"

    .line 48
    invoke-virtual {p0, v2}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "about_category"

    .line 49
    invoke-virtual {p0, v3}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    const-string v4, "show_quick_access_bar"

    .line 52
    invoke-virtual {p0, v4}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const-string v6, "general_category"

    .line 53
    invoke-virtual {p0, v6}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 57
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 60
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x1020002

    invoke-virtual {p0, v8}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    const v9, 0x7f0d00a2

    invoke-virtual {v7, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v7, 0x7f0a0221

    .line 61
    invoke-virtual {p0, v7}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/Toolbar;

    .line 62
    invoke-virtual {p0, v7}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 63
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_88

    .line 64
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroidx/appcompat/app/ActionBar;->setElevation(F)V

    .line 68
    :cond_88
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    .line 69
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    .line 70
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070056

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    add-int/lit8 v10, v10, 0x1e

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v8, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    .line 71
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual {v11, v7, v10, v7, v9}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 76
    new-instance v7, Lcom/appsgeyser/multiTabApp/SettingsActivity$1;

    invoke-direct {v7, p0}, Lcom/appsgeyser/multiTabApp/SettingsActivity$1;-><init>(Lcom/appsgeyser/multiTabApp/SettingsActivity;)V

    iput-object v7, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity;->onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 96
    iget-object v9, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v9, v7}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 98
    new-instance v7, Lcom/appsgeyser/multiTabApp/SettingsActivity$2;

    invoke-direct {v7, p0, v0}, Lcom/appsgeyser/multiTabApp/SettingsActivity$2;-><init>(Lcom/appsgeyser/multiTabApp/SettingsActivity;Landroid/preference/Preference;)V

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    new-instance v0, Lcom/appsgeyser/multiTabApp/SettingsActivity$3;

    invoke-direct {v0, p0, v1}, Lcom/appsgeyser/multiTabApp/SettingsActivity$3;-><init>(Lcom/appsgeyser/multiTabApp/SettingsActivity;Landroid/preference/Preference;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "about_preference"

    .line 115
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/appsgeyser/multiTabApp/SettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/SettingsActivity$4;-><init>(Lcom/appsgeyser/multiTabApp/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 123
    new-instance v1, Lcom/appsgeyser/multiTabApp/SettingsActivity$5;

    invoke-direct {v1, p0, v3, v0}, Lcom/appsgeyser/multiTabApp/SettingsActivity$5;-><init>(Lcom/appsgeyser/multiTabApp/SettingsActivity;Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V

    invoke-static {p0, v1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->isAboutDialogEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V

    const/4 v0, 0x0

    const v1, 0x7f120047

    const/4 v3, 0x2

    const/4 v7, 0x0

    :try_start_ff
    new-array v3, v3, [Ljava/lang/Object;

    .line 137
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v9, v3, v7

    const-string v9, "2.19.s"

    aput-object v9, v3, v8

    invoke-virtual {p0, v1, v3}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_119
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ff .. :try_end_119} :catch_11a

    goto :goto_11e

    :catch_11a
    move-exception v1

    .line 139
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_11e
    const-string v1, "build_version_preference"

    .line 141
    invoke-virtual {p0, v1}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 142
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v0

    if-eqz v0, :cond_15f

    .line 171
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {p1, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 172
    invoke-virtual {v5}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_145

    if-eqz p1, :cond_145

    .line 173
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 175
    :cond_145
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShowSearchNotice()Z

    move-result p1

    if-nez p1, :cond_191

    .line 176
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    goto :goto_191

    .line 178
    :cond_15f
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShowSearchNotice()Z

    move-result v0

    if-eqz v0, :cond_185

    .line 179
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getUrlOverlayState()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    if-eq v0, v1, :cond_191

    .line 180
    :cond_185
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_191

    .line 182
    invoke-virtual {p1, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_191
    :goto_191
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 202
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_b

    const/4 p1, 0x0

    return p1

    .line 204
    :cond_b
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .registers 1

    .line 196
    invoke-super {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->onPause()V

    .line 197
    invoke-static {p0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 190
    invoke-super {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->onResume()V

    .line 191
    invoke-static {p0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->onResume(Landroid/content/Context;)V

    return-void
.end method
