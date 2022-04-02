.class public final Lcom/appnext/base/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final eO:Ljava/lang/String; = "cycle"

.field public static final eP:Ljava/lang/String; = "cycle_type"

.field public static final eQ:Ljava/lang/String; = "sample"

.field public static final eR:Ljava/lang/String; = "sample_type"

.field public static final eS:Ljava/lang/String; = "service_key"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/os/PersistableBundle;)Lcom/appnext/base/a/b/c;
    .registers 13

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "key"

    const-string v2, ""

    .line 57
    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "cycle"

    .line 58
    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "cycle_type"

    .line 59
    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "sample"

    .line 60
    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "sample_type"

    .line 61
    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "service_key"

    .line 62
    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "status"

    .line 63
    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "data"

    .line 64
    invoke-virtual {p0, v1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 66
    new-instance p0, Lcom/appnext/base/a/b/c;

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/appnext/base/a/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/appnext/base/a/b/c;
    .registers 20

    move-object/from16 v0, p0

    const-string v1, "data"

    const-string v2, "status"

    const-string v3, "service_key"

    const-string v4, "sample_type"

    const-string v5, "sample"

    const-string v6, "cycle_type"

    const-string v7, "cycle"

    const-string v8, "key"

    const/4 v9, 0x0

    if-nez v0, :cond_16

    return-object v9

    .line 75
    :cond_16
    :try_start_16
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v8

    goto :goto_25

    :cond_23
    move-object/from16 v16, v9

    .line 76
    :goto_25
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_31

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v14, v7

    goto :goto_32

    :cond_31
    move-object v14, v9

    .line 77
    :goto_32
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    goto :goto_3f

    :cond_3e
    move-object v15, v9

    .line 78
    :goto_3f
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    goto :goto_4c

    :cond_4b
    move-object v12, v9

    .line 79
    :goto_4c
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    goto :goto_59

    :cond_58
    move-object v13, v9

    .line 80
    :goto_59
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_68

    :cond_66
    move-object/from16 v17, v9

    .line 81
    :goto_68
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_75

    :cond_74
    move-object v11, v9

    .line 82
    :goto_75
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_84

    :cond_82
    move-object/from16 v18, v9

    .line 84
    :goto_84
    new-instance v0, Lcom/appnext/base/a/b/c;

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/appnext/base/a/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_16 .. :try_end_8a} :catchall_8b

    return-object v0

    :catchall_8b
    return-object v9
.end method

.method public static e(Lcom/appnext/base/a/b/c;)Landroid/os/PersistableBundle;
    .registers 5

    .line 27
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    :try_start_5
    const-string v1, "key"

    .line 29
    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_98

    const-string v3, ""

    if-eqz v2, :cond_14

    :try_start_f
    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v3

    :goto_15
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cycle"

    .line 30
    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->an()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->an()Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    :cond_25
    move-object v2, v3

    :goto_26
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cycle_type"

    .line 31
    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->ao()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->ao()Ljava/lang/String;

    move-result-object v2

    goto :goto_37

    :cond_36
    move-object v2, v3

    :goto_37
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sample"

    .line 32
    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->al()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->al()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sample_type"

    .line 33
    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->am()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_53

    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->am()Ljava/lang/String;

    move-result-object v2

    goto :goto_54

    :cond_53
    move-object v2, v3

    :goto_54
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "service_key"

    .line 34
    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->ap()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_64

    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->ap()Ljava/lang/String;

    move-result-object v2

    goto :goto_65

    :cond_64
    move-object v2, v3

    :goto_65
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    .line 35
    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->ak()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_74

    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->ak()Ljava/lang/String;

    move-result-object v3

    :cond_74
    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->aq()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_7b
    .catchall {:try_start_f .. :try_end_7b} :catchall_98

    const-string v2, "data"

    if-eqz v1, :cond_8a

    .line 37
    :try_start_7f
    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->aq()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_8a
    invoke-virtual {p0}, Lcom/appnext/base/a/b/c;->aq()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_9c

    .line 42
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_7f .. :try_end_97} :catchall_98

    goto :goto_9c

    :catchall_98
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_9c
    :goto_9c
    return-object v0
.end method
