.class public Lcom/appnext/base/operations/imp/cdm;
.super Lcom/appnext/base/operations/c;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final ey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appnext/base/a/b/c;Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/appnext/base/operations/c;-><init>(Lcom/appnext/base/a/b/c;Landroid/os/Bundle;Ljava/lang/Object;)V

    const-string p1, "cdm"

    .line 29
    iput-object p1, p0, Lcom/appnext/base/operations/imp/cdm;->TAG:Ljava/lang/String;

    const-string p1, "[ { \"status\": \"on\", \"sample\":\"1\", \"sample_type\":\"hour\", \"cycle\":\"1\", \"cycle_type\":\"interval\", \"key\":\"cdm\" } ]"

    .line 31
    iput-object p1, p0, Lcom/appnext/base/operations/imp/cdm;->ey:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object p1

    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appnext/base/b/i;->init(Landroid/content/Context;)V

    return-void
.end method

.method private static C(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/c;",
            ">;"
        }
    .end annotation

    .line 93
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 96
    :goto_b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_4b

    .line 98
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "status"

    .line 99
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "service_key"

    .line 103
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-static {v2}, Lcom/appnext/base/b/c;->c(Lorg/json/JSONObject;)Lcom/appnext/base/a/b/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    add-int/lit8 p0, p0, 0x1

    goto :goto_b

    .line 108
    :cond_4b
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appnext/base/a/a;->ab()Lcom/appnext/base/a/c/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appnext/base/a/c/c;->delete()V

    .line 109
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appnext/base/a/a;->ab()Lcom/appnext/base/a/c/c;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/appnext/base/a/c/c;->b(Lorg/json/JSONArray;)J
    :try_end_61
    .catchall {:try_start_0 .. :try_end_61} :catchall_62

    return-object v0

    :catchall_62
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 113
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method protected final aA()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final aF()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected getData()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;"
        }
    .end annotation

    const-string v0, "[ { \"status\": \"on\", \"sample\":\"1\", \"sample_type\":\"hour\", \"cycle\":\"1\", \"cycle_type\":\"interval\", \"key\":\"cdm\" } ]"

    .line 45
    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/appnext/base/b/j;->i(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return-object v2

    .line 51
    :cond_e
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "http://cdn.appnext.com/tools/services/4.7.2/config.json?packageId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&dosv="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&lvid=4.7.2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1, v2}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catch Ljava/net/HttpRetryException; {:try_start_e .. :try_end_37} :catch_38
    .catchall {:try_start_e .. :try_end_37} :catchall_3c

    goto :goto_3c

    :catch_38
    move-exception v1

    .line 57
    invoke-virtual {v1}, Ljava/net/HttpRetryException;->responseCode()I

    .line 69
    :catchall_3c
    :goto_3c
    :try_start_3c
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/base/a/a;->ab()Lcom/appnext/base/a/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/base/a/c/c;->as()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 71
    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/appnext/base/services/b/a;->d(Landroid/content/Context;)Lcom/appnext/base/services/b/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/appnext/base/services/b/a;->h(Ljava/util/List;)V

    .line 73
    :cond_55
    invoke-static {v0}, Lcom/appnext/base/operations/imp/cdm;->C(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appnext/base/a/b/c;

    .line 75
    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/appnext/base/services/b/a;->d(Landroid/content/Context;)Lcom/appnext/base/services/b/a;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/appnext/base/services/b/a;->a(Lcom/appnext/base/a/b/c;Z)V
    :try_end_75
    .catchall {:try_start_3c .. :try_end_75} :catchall_76

    goto :goto_5d

    :catchall_76
    :cond_76
    return-object v2
.end method

.method protected final getKey()Ljava/lang/String;
    .registers 2

    .line 119
    const-class v0, Lcom/appnext/base/operations/imp/cdm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
