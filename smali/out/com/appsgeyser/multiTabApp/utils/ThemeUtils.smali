.class public Lcom/appsgeyser/multiTabApp/utils/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# direct methods
.method public static getActivityThemeName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 21
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x7f04029c

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 23
    iget-object p0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initializeAppTheme(Landroid/app/Activity;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;)V
    .registers 6

    .line 45
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object p1

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->ACTION_BAR:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-ne p1, v1, :cond_37

    const-string p1, "AppThemeName"

    const-string v1, "AppThemeDefaultNoActionBar"

    .line 47
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    :cond_24
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/utils/ThemeUtils;->getActivityThemeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 54
    invoke-static {v2}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->findByNoActionBarName(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    move-result-object p1

    iget p1, p1, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeNoActionBarId:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :cond_37
    return-void
.end method

.method public static setCurrentThemeWithActionBar(Landroid/app/Activity;)V
    .registers 4

    .line 27
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AppThemeName"

    const-string v2, "AppThemeDefault"

    .line 28
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NoActionBar"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, ""

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_1a
    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->findByName(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    move-result-object v0

    iget v0, v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeId:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method

.method public static setCurrentThemeWithNoActionBar(Landroid/app/Activity;)V
    .registers 4

    .line 36
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AppThemeName"

    const-string v2, "AppThemeDefaultNoActionBar"

    .line 37
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NoActionBar"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_23
    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->findByNoActionBarName(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    move-result-object v0

    iget v0, v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeNoActionBarId:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method
