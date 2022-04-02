.class public abstract Lcom/appnext/base/operations/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/base/operations/a$a;
    }
.end annotation


# static fields
.field private static final em:Ljava/lang/String; = "collectedData"

.field private static final en:Ljava/lang/String; = "collectedDataType"

.field private static final eo:Ljava/lang/String; = "lastCollectedData"


# instance fields
.field private el:Lcom/appnext/base/operations/a$a;

.field protected ep:Lcom/appnext/base/a/b/c;


# direct methods
.method public constructor <init>(Lcom/appnext/base/a/b/c;Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/appnext/base/operations/a;->ep:Lcom/appnext/base/a/b/c;

    return-void
.end method

.method private static A(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastCollectedData"

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 263
    :cond_3
    :try_start_3
    invoke-static {p2}, Lcom/appnext/base/operations/a;->d(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    .line 267
    :cond_a
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v0

    invoke-static {p1}, Lcom/appnext/base/operations/a;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/appnext/base/b/i;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception p1

    .line 269
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Ljava/util/Map;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/appnext/base/operations/a;->ep:Lcom/appnext/base/a/b/c;

    invoke-virtual {v1}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_lastcollectedtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, -0x1

    invoke-virtual {v2, v3, v5, v6}, Lcom/appnext/base/b/i;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/appnext/base/b/i;->putLong(Ljava/lang/String;J)V

    .line 109
    invoke-static {v1, p1}, Lcom/appnext/base/b/b;->a(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method protected static aB()Lcom/appnext/base/a/c/d;
    .registers 1

    .line 206
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a;->aa()Lcom/appnext/base/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method protected static az()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method protected static c(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            ">;)",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method private c(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 210
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 6206
    :cond_7
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a;->aa()Lcom/appnext/base/a/c/b;

    move-result-object v0

    .line 215
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    invoke-virtual {v0, v1}, Lcom/appnext/base/a/c/d;->u(Ljava/lang/String;)V

    goto :goto_13

    :cond_23
    return-void
.end method

.method public static cancel()V
    .registers 0

    return-void
.end method

.method private static d(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    .line 285
    :try_start_3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3f

    .line 288
    :cond_a
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 289
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/base/a/b/b;

    .line 290
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "collectedData"

    .line 292
    invoke-virtual {v2}, Lcom/appnext/base/a/b/b;->ai()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "collectedDataType"

    .line 293
    invoke-virtual {v2}, Lcom/appnext/base/a/b/b;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_3b

    goto :goto_13

    :cond_3a
    return-object v1

    :catchall_3b
    move-exception p0

    .line 299
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3f
    :goto_3f
    return-object v0
.end method

.method private static d(Lcom/appnext/base/a/b/b;)Lorg/json/JSONObject;
    .registers 3

    .line 178
    invoke-virtual {p0}, Lcom/appnext/base/a/b/b;->ai()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/appnext/base/a/b/b;->aj()Ljava/util/Date;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Lcom/appnext/base/a/b/b;->getDataType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appnext/base/b/d$a;->valueOf(Ljava/lang/String;)Lcom/appnext/base/b/d$a;

    move-result-object p0

    .line 181
    invoke-static {v0, v1, p0}, Lcom/appnext/base/b/b;->a(Ljava/lang/String;Ljava/util/Date;Lcom/appnext/base/b/d$a;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method protected static getDate()Ljava/util/Date;
    .registers 1

    .line 254
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/util/List;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;)J"
        }
    .end annotation

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    .line 58
    :try_start_3
    invoke-static {p1, v0}, Lcom/appnext/base/b/b;->a(Ljava/util/List;Z)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 60
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1c

    .line 1206
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a;->aa()Lcom/appnext/base/a/c/b;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lcom/appnext/base/a/c/d;->a(Lorg/json/JSONArray;)J

    move-result-wide v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1c

    move-wide v1, v0

    :catchall_1c
    :cond_1c
    return-wide v1
.end method

.method public final a(Lcom/appnext/base/a;)V
    .registers 3

    .line 186
    invoke-static {}, Lcom/appnext/base/operations/b;->aI()Lcom/appnext/base/operations/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appnext/base/operations/b;->a(Lcom/appnext/base/operations/a;)V

    .line 188
    iget-object v0, p0, Lcom/appnext/base/operations/a;->el:Lcom/appnext/base/operations/a$a;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_11

    .line 190
    invoke-interface {v0, p1}, Lcom/appnext/base/operations/a$a;->b(Lcom/appnext/base/a;)V

    return-void

    .line 193
    :cond_11
    invoke-interface {v0}, Lcom/appnext/base/operations/a$a;->aH()V

    :cond_14
    return-void
.end method

.method public final a(Lcom/appnext/base/operations/a$a;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/appnext/base/operations/a;->el:Lcom/appnext/base/operations/a$a;

    return-void
.end method

.method protected aA()Z
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/appnext/base/operations/a;->ep:Lcom/appnext/base/a/b/c;

    invoke-static {v0}, Lcom/appnext/base/b/b;->d(Lcom/appnext/base/a/b/c;)Z

    move-result v0

    return v0
.end method

.method public abstract aC()V
.end method

.method public abstract aD()V
.end method

.method public final aE()Z
    .registers 8

    const/4 v0, 0x0

    .line 231
    :try_start_1
    iget-object v1, p0, Lcom/appnext/base/operations/a;->ep:Lcom/appnext/base/a/b/c;

    invoke-virtual {v1}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_lastcollectedtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/appnext/base/b/i;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xdbba0

    cmp-long v2, v3, v5

    if-gez v2, :cond_44

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " less then interval"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0

    .line 238
    :cond_44
    invoke-virtual {p0}, Lcom/appnext/base/operations/a;->aF()Z

    move-result v0
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_48

    :catchall_48
    return v0
.end method

.method public aF()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected aG()Lcom/appnext/base/b/d$a;
    .registers 2

    .line 250
    sget-object v0, Lcom/appnext/base/b/d$a;->String:Lcom/appnext/base/b/d$a;

    return-object v0
.end method

.method protected final av()V
    .registers 10

    const-string v0, "_lastcollectedtime"

    .line 75
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/appnext/base/operations/a;->ep:Lcom/appnext/base/a/b/c;

    invoke-virtual {v2}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/appnext/base/b/i;->putLong(Ljava/lang/String;J)V

    .line 80
    invoke-virtual {p0}, Lcom/appnext/base/operations/a;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 82
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39

    .line 83
    invoke-virtual {p0, v1}, Lcom/appnext/base/operations/a;->a(Ljava/util/List;)J

    .line 85
    :cond_39
    invoke-virtual {p0}, Lcom/appnext/base/operations/a;->getKey()Ljava/lang/String;

    move-result-object v2
    :try_end_3d
    .catchall {:try_start_2 .. :try_end_3d} :catchall_107

    if-nez v1, :cond_40

    goto :goto_5b

    .line 1263
    :cond_40
    :try_start_40
    invoke-static {v1}, Lcom/appnext/base/operations/a;->d(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_47

    goto :goto_5b

    .line 1267
    :cond_47
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v3

    invoke-static {v2}, Lcom/appnext/base/operations/a;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/appnext/base/b/i;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception v1

    .line 1269
    :try_start_58
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    :goto_5b
    iget-object v1, p0, Lcom/appnext/base/operations/a;->ep:Lcom/appnext/base/a/b/c;

    invoke-virtual {v1}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v1
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_107

    .line 2096
    :try_start_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_lastupdate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2097
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/appnext/base/b/i;->putLong(Ljava/lang/String;J)V

    .line 2098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_cycles"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2099
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/appnext/base/b/i;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 2100
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/appnext/base/b/i;->putInt(Ljava/lang/String;I)V
    :try_end_a0
    .catchall {:try_start_61 .. :try_end_a0} :catchall_a0

    :catchall_a0
    const/4 v1, 0x0

    .line 88
    :try_start_a1
    invoke-virtual {p0}, Lcom/appnext/base/operations/a;->aA()Z

    move-result v2

    if-eqz v2, :cond_104

    .line 89
    invoke-virtual {p0}, Lcom/appnext/base/operations/a;->ax()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_104

    .line 90
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_104

    .line 3104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3105
    iget-object v4, p0, Lcom/appnext/base/operations/a;->ep:Lcom/appnext/base/a/b/c;

    invoke-virtual {v4}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 3106
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, -0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/appnext/base/b/i;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 3108
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v0, v6, v7}, Lcom/appnext/base/b/i;->putLong(Ljava/lang/String;J)V

    .line 3109
    invoke-static {v4, v2}, Lcom/appnext/base/b/b;->a(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_104

    .line 92
    new-instance v1, Lcom/appnext/base/a;

    sget v0, Lcom/appnext/base/a$a;->NoInternet$1d8b5b4a:I

    invoke-direct {v1, v0}, Lcom/appnext/base/a;-><init>(I)V

    .line 96
    :cond_104
    invoke-virtual {p0, v1}, Lcom/appnext/base/operations/a;->a(Lcom/appnext/base/a;)V
    :try_end_107
    .catchall {:try_start_a1 .. :try_end_107} :catchall_107

    :catchall_107
    return-void
.end method

.method protected final aw()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;"
        }
    .end annotation

    .line 3206
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a;->aa()Lcom/appnext/base/a/c/b;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/appnext/base/operations/a;->ep:Lcom/appnext/base/a/b/c;

    invoke-virtual {v1}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/base/a/c/d;->w(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final ax()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4206
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a;->aa()Lcom/appnext/base/a/c/b;

    move-result-object v0

    .line 4113
    iget-object v1, p0, Lcom/appnext/base/operations/a;->ep:Lcom/appnext/base/a/b/c;

    invoke-virtual {v1}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/base/a/c/d;->w(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d9

    .line 118
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto/16 :goto_d9

    .line 122
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/appnext/base/operations/a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d9

    .line 123
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto/16 :goto_d9

    .line 128
    :cond_2b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/base/a/b/b;

    .line 130
    invoke-virtual {v2}, Lcom/appnext/base/a/b/b;->ah()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {v2}, Lcom/appnext/base/a/b/b;->getType()Ljava/lang/String;

    move-result-object v4

    .line 132
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 135
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/appnext/base/operations/a;->d(Lcom/appnext/base/a/b/b;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_34

    .line 137
    :cond_61
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 138
    invoke-static {v2}, Lcom/appnext/base/operations/a;->d(Lcom/appnext/base/a/b/b;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 139
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 145
    :cond_71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_aa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 148
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 149
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 154
    :cond_aa
    iget-object v1, p0, Lcom/appnext/base/operations/a;->ep:Lcom/appnext/base/a/b/c;

    invoke-virtual {v1}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b3

    goto :goto_cc

    .line 6086
    :cond_b3
    :try_start_b3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_cycles"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6087
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/appnext/base/b/i;->putInt(Ljava/lang/String;I)V
    :try_end_cc
    .catchall {:try_start_b3 .. :try_end_cc} :catchall_cc

    .line 155
    :catchall_cc
    :goto_cc
    invoke-direct {p0, v2}, Lcom/appnext/base/operations/a;->c(Ljava/util/List;)V

    .line 156
    iget-object v1, p0, Lcom/appnext/base/operations/a;->ep:Lcom/appnext/base/a/b/c;

    invoke-virtual {v1}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appnext/base/b/b;->F(Ljava/lang/String;)Z

    return-object v0

    :cond_d9
    :goto_d9
    return-object v1
.end method

.method protected final ay()Lcom/appnext/base/a/b/c;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/appnext/base/operations/a;->ep:Lcom/appnext/base/a/b/c;

    return-object v0
.end method

.method protected b(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method protected final e(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_39

    .line 308
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_39

    .line 312
    :cond_a
    invoke-static {p1}, Lcom/appnext/base/operations/a;->d(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 314
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appnext/base/operations/a;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appnext/base/operations/a;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appnext/base/b/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_39

    if-eqz p1, :cond_39

    const/4 p1, 0x0

    return p1

    :catchall_39
    :cond_39
    :goto_39
    return v0
.end method

.method protected abstract getData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getKey()Ljava/lang/String;
.end method
