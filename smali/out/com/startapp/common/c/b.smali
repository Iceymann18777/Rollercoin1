.class public Lcom/startapp/common/c/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    :try_start_1
    new-instance v1, Lcom/startapp/common/c/a;

    invoke-direct {v1, p0}, Lcom/startapp/common/c/a;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    .line 34
    :try_start_6
    invoke-virtual {v1, p1, v0}, Lcom/startapp/common/c/a;->a(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 39
    :try_start_a
    invoke-virtual {v1}, Lcom/startapp/common/c/a;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_d

    :catch_d
    return-object p0

    :catchall_e
    move-exception p0

    move-object v0, v1

    goto :goto_12

    :catchall_11
    move-exception p0

    :goto_12
    if-eqz v0, :cond_17

    :try_start_14
    invoke-virtual {v0}, Lcom/startapp/common/c/a;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_17

    .line 41
    :catch_17
    :cond_17
    throw p0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    .line 47
    invoke-static {p0}, Lcom/startapp/common/c/b;->c(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 113
    invoke-static {p0}, Lcom/startapp/common/c/c;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 116
    :cond_7
    invoke-static {p0}, Lcom/startapp/common/c/b;->c(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 8

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_9
    if-eqz v0, :cond_23

    .line 54
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 55
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_9

    .line 59
    :cond_23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 60
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 61
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    .line 62
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-eqz v3, :cond_49

    goto :goto_2c

    :cond_49
    const/4 v3, 0x1

    .line 67
    :try_start_4a
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 69
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_54

    goto :goto_2c

    .line 73
    :cond_54
    invoke-static {v2}, Lcom/startapp/common/c/c;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-static {v2}, Lcom/startapp/common/c/c;->e(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 76
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/startapp/common/c/b;->c(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2c

    .line 77
    :cond_6a
    invoke-static {v2}, Lcom/startapp/common/c/c;->c(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 78
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 79
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 80
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 81
    invoke-static {v5}, Lcom/startapp/common/c/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7f

    .line 83
    :cond_91
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2c

    .line 84
    :cond_95
    invoke-static {v2}, Lcom/startapp/common/c/c;->d(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 85
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 86
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 87
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_aa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 88
    invoke-static {v5}, Lcom/startapp/common/c/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_aa

    .line 90
    :cond_bc
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2c

    .line 91
    :cond_c1
    invoke-static {v2}, Lcom/startapp/common/c/c;->b(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_ff

    .line 92
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 93
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 94
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_da
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_fa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/startapp/common/c/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_da

    .line 97
    :cond_fa
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2c

    .line 99
    :cond_ff
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_106
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_106} :catch_108
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_106} :catch_108
    .catch Ljava/lang/IllegalAccessException; {:try_start_4a .. :try_end_106} :catch_108

    goto/16 :goto_2c

    :catch_108
    nop

    goto/16 :goto_2c

    :cond_10b
    return-object v0
.end method
