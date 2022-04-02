.class public Lcom/appsgeyser/sdk/configuration/PreferencesCoder;
.super Ljava/lang/Object;
.source "PreferencesCoder.java"


# instance fields
.field private final prefsSettings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AppsgeyserPrefs"

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->prefsSettings:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getPrefBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->prefsSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getPrefInt(Ljava/lang/String;I)I
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->prefsSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getPrefLong(Ljava/lang/String;J)J
    .registers 5

    .line 42
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->prefsSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 18
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->prefsSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public savePrefBoolean(Ljava/lang/String;Z)V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->prefsSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public savePrefInt(Ljava/lang/String;I)V
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->prefsSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public savePrefLong(Ljava/lang/String;J)V
    .registers 5

    .line 47
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->prefsSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public savePrefString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 23
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->prefsSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
