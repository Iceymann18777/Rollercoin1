.class public Lcom/appsgeyser/sdk/server/StatController;
.super Ljava/lang/Object;
.source "StatController.java"


# static fields
.field private static instance:Lcom/appsgeyser/sdk/server/StatController;


# instance fields
.field private items:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/appsgeyser/sdk/server/StatController;
    .registers 2

    const-class v0, Lcom/appsgeyser/sdk/server/StatController;

    monitor-enter v0

    .line 99
    :try_start_3
    sget-object v1, Lcom/appsgeyser/sdk/server/StatController;->instance:Lcom/appsgeyser/sdk/server/StatController;

    if-nez v1, :cond_e

    .line 100
    new-instance v1, Lcom/appsgeyser/sdk/server/StatController;

    invoke-direct {v1}, Lcom/appsgeyser/sdk/server/StatController;-><init>()V

    sput-object v1, Lcom/appsgeyser/sdk/server/StatController;->instance:Lcom/appsgeyser/sdk/server/StatController;

    .line 102
    :cond_e
    sget-object v1, Lcom/appsgeyser/sdk/server/StatController;->instance:Lcom/appsgeyser/sdk/server/StatController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isInitialized()Z
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/StatController;->items:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private sendQueryToYandexMetrica(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    .line 176
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_c
    invoke-static {p1, v0}, Lcom/yandex/metrica/YandexMetrica;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    return-void
.end method


# virtual methods
.method public init(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/StatController;->items:Ljava/util/HashMap;

    return-void
.end method

.method public sendRequestAsyncByKey(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    return-void
.end method

.method public sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    if-eqz p4, :cond_1e

    if-eqz p3, :cond_1e

    if-eqz p2, :cond_1e

    .line 125
    invoke-static {p3}, Lcom/appsgeyser/sdk/utils/DeviceInfoGetter;->getDeviceInfoMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p4

    if-eqz p4, :cond_f

    .line 128
    invoke-virtual {p2, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 131
    :cond_f
    invoke-static {p3}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object p3

    .line 132
    invoke-virtual {p3}, Lcom/appsgeyser/sdk/configuration/Configuration;->getTemplateVersion()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1e

    const-string p4, "templateversion"

    .line 135
    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_1e
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/server/StatController;->sendQueryToYandexMetrica(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 141
    invoke-direct {p0}, Lcom/appsgeyser/sdk/server/StatController;->isInitialized()Z

    move-result p3

    const-string p4, "StatController"

    if-nez p3, :cond_3e

    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "StatController not initialized, skipping stat request on: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 146
    :cond_3e
    iget-object p3, p0, Lcom/appsgeyser/sdk/server/StatController;->items:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_5d

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Stat url not set, skipping stat request on: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 152
    :cond_5d
    new-instance p1, Lcom/appsgeyser/sdk/server/StatController$1;

    invoke-direct {p1, p0, p3, p2}, Lcom/appsgeyser/sdk/server/StatController$1;-><init>(Lcom/appsgeyser/sdk/server/StatController;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 169
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/server/StatController$1;->start()V

    return-void
.end method
