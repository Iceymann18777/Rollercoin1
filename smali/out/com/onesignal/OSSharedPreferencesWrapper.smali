.class Lcom/onesignal/OSSharedPreferencesWrapper;
.super Ljava/lang/Object;
.source "OSSharedPreferencesWrapper.java"

# interfaces
.implements Lcom/onesignal/OSSharedPreferences;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBool(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    .line 32
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 42
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getOutcomesV2KeyName()Ljava/lang/String;
    .registers 2

    const-string v0, "PREFS_OS_OUTCOMES_V2"

    return-object v0
.end method

.method public getPreferencesName()Ljava/lang/String;
    .registers 2

    .line 17
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 22
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public saveBool(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 37
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public saveInt(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 47
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 27
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
