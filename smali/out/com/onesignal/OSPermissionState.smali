.class public Lcom/onesignal/OSPermissionState;
.super Ljava/lang/Object;
.source "OSPermissionState.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private enabled:Z

.field observable:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Ljava/lang/Object;",
            "Lcom/onesignal/OSPermissionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .registers 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/onesignal/OSObservable;

    const-string v1, "changed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/onesignal/OSPermissionState;->observable:Lcom/onesignal/OSObservable;

    if-eqz p1, :cond_1a

    .line 42
    sget-object p1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v0, "ONESIGNAL_ACCEPTED_NOTIFICATION_LAST"

    invoke-static {p1, v0, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    goto :goto_1d

    .line 46
    :cond_1a
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->refreshAsTo()V

    :goto_1d
    return-void
.end method

.method private setEnabled(Z)V
    .registers 3

    .line 60
    iget-boolean v0, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 61
    :goto_7
    iput-boolean p1, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    if-eqz v0, :cond_10

    .line 63
    iget-object p1, p0, Lcom/onesignal/OSPermissionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {p1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 2

    .line 77
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    :catchall_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnabled()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    return v0
.end method

.method persistAsFrom()V
    .registers 4

    .line 67
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    const-string v2, "ONESIGNAL_ACCEPTED_NOTIFICATION_LAST"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method refreshAsTo()V
    .registers 2

    .line 52
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/onesignal/OSPermissionState;->setEnabled(Z)V

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 4

    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "enabled"

    .line 86
    iget-boolean v2, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    goto :goto_11

    :catchall_d
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_11
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 97
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
