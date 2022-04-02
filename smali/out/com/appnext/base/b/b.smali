.class public final Lcom/appnext/base/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static E(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;"
        }
    .end annotation

    .line 50
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a;->aa()Lcom/appnext/base/a/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appnext/base/a/c/b;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_e

    :catchall_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public static F(Ljava/lang/String;)Z
    .registers 1

    .line 59
    invoke-static {p0}, Lcom/appnext/base/b/b;->E(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 61
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static G(Ljava/lang/String;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 86
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_cycles"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/appnext/base/b/i;->putInt(Ljava/lang/String;I)V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1c

    :catchall_1c
    return-void
.end method

.method public static H(Ljava/lang/String;)V
    .registers 5

    .line 96
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_lastupdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/appnext/base/b/i;->putLong(Ljava/lang/String;J)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_cycles"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/appnext/base/b/i;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 100
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/appnext/base/b/i;->putInt(Ljava/lang/String;I)V
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_3f

    :catchall_3f
    return-void
.end method

.method public static a(Ljava/util/List;Z)Lorg/json/JSONArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;Z)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 108
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 109
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/base/a/b/b;

    .line 110
    invoke-virtual {v0}, Lcom/appnext/base/a/b/b;->ai()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 114
    invoke-static {}, Lcom/appnext/base/b/h;->aO()Lcom/appnext/base/b/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/appnext/base/b/h;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 118
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "pk"

    .line 119
    invoke-virtual {v0}, Lcom/appnext/base/a/b/b;->ah()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "t"

    .line 120
    invoke-virtual {v0}, Lcom/appnext/base/a/b/b;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cd"

    .line 122
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cdt"

    .line 123
    invoke-virtual {v0}, Lcom/appnext/base/a/b/b;->getDataType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_55
    .catchall {:try_start_0 .. :try_end_55} :catchall_57

    goto :goto_9

    :cond_56
    return-object p1

    :catchall_57
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Date;Lcom/appnext/base/b/d$a;)Lorg/json/JSONObject;
    .registers 5

    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    :try_start_5
    invoke-static {}, Lcom/appnext/base/b/h;->aO()Lcom/appnext/base/b/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/appnext/base/b/h;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-object v0

    :cond_14
    const-string v1, "data"

    .line 72
    invoke-static {p0, p2}, Lcom/appnext/base/b/j;->b(Ljava/lang/String;Lcom/appnext/base/b/d$a;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "date"

    .line 73
    invoke-static {p1}, Lcom/appnext/base/b/j;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_26

    :catchall_26
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 137
    :try_start_0
    invoke-static {p0, p1}, Lcom/appnext/base/b/j;->b(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p0

    :catchall_5
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Lcom/appnext/base/a/b/c;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 26
    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_cycles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/appnext/base/b/i;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_31

    const/4 v2, 0x1

    .line 32
    :try_start_22
    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->an()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2a} :catch_30
    .catchall {:try_start_22 .. :try_end_2a} :catchall_31

    if-ge v1, p0, :cond_30

    if-nez v1, :cond_2f

    goto :goto_30

    :cond_2f
    return v0

    :catch_30
    :cond_30
    :goto_30
    return v2

    :catchall_31
    return v0
.end method
