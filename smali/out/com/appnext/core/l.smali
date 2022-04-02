.class public final Lcom/appnext/core/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static hv:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_5} :catch_105
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_5} :catch_105

    .line 52
    sget v1, Lcom/appnext/core/l;->hv:I

    if-nez v1, :cond_e

    .line 53
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    goto :goto_12

    .line 55
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    .line 58
    :goto_12
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_105

    aget-object v4, p0, v3

    .line 61
    sget v5, Lcom/appnext/core/l;->hv:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2c

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v5, 0x1

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 66
    :cond_2c
    :try_start_2c
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f0

    .line 67
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "boolean"

    .line 68
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 69
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto/16 :goto_f0

    :cond_53
    const-string v7, "int"

    .line 70
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 71
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto/16 :goto_f0

    :cond_68
    const-string v7, "double"

    .line 72
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 73
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v4, v0, v7, v8}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_f0

    :cond_7d
    const-string v7, "float"

    .line 74
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 75
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v5, v7

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_f0

    :cond_92
    const-string v7, "string"

    .line 76
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 77
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f0

    .line 78
    :cond_a6
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_db

    .line 79
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/appnext/core/l;->a(Ljava/lang/Object;Lorg/json/JSONArray;)V

    goto :goto_f0

    .line 82
    :cond_db
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/appnext/core/l;->a(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ee
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_ee} :catch_ef
    .catch Ljava/lang/IllegalAccessException; {:try_start_2c .. :try_end_ee} :catch_ef
    .catchall {:try_start_2c .. :try_end_ee} :catchall_ef

    goto :goto_f0

    :catch_ef
    :catchall_ef
    nop

    .line 93
    :cond_f0
    :goto_f0
    sget v5, Lcom/appnext/core/l;->hv:I

    if-ne v5, v6, :cond_101

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-eqz v5, :cond_101

    .line 94
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_101
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15

    :catch_105
    :cond_105
    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lorg/json/JSONArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NegativeArraySizeException;,
            Ljava/lang/IllegalAccessException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 110
    :goto_d
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6c

    .line 111
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 112
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 113
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/appnext/core/l;->a(Ljava/lang/Object;Lorg/json/JSONArray;)V

    goto :goto_69

    .line 114
    :cond_40
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_62

    const-string v3, "string"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 115
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/appnext/core/l;->a(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_69

    .line 117
    :cond_62
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_6c
    return-void
.end method

.method public static bk()I
    .registers 1

    .line 31
    sget v0, Lcom/appnext/core/l;->hv:I

    return v0
.end method

.method public static c(Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 11

    .line 127
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 133
    sget v2, Lcom/appnext/core/l;->hv:I

    if-nez v2, :cond_12

    .line 134
    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_16

    .line 136
    :cond_12
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 139
    :goto_16
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v2, :cond_dc

    aget-object v5, v1, v4

    .line 140
    sget v6, Lcom/appnext/core/l;->hv:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_30

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v6

    if-eqz v6, :cond_30

    const/4 v6, 0x1

    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    :cond_30
    :try_start_30
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 148
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 149
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_c7

    const-string v9, "boolean"

    .line 150
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_53

    .line 151
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_c7

    :cond_53
    const-string v9, "int"

    .line 152
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_63

    .line 153
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_c7

    :cond_63
    const-string v9, "double"

    .line 154
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_73

    .line 155
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_c7

    :cond_73
    const-string v9, "float"

    .line 156
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_84

    .line 157
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v0, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_c7

    :cond_84
    const-string v9, "long"

    .line 158
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_94

    .line 159
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_c7

    :cond_94
    const-string v9, "string"

    .line 160
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a6

    .line 161
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_c7

    :cond_a6
    const-string v9, "]"

    .line 162
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ba

    .line 163
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/appnext/core/l;->d(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_c7

    .line 165
    :cond_ba
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/appnext/core/l;->c(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_c5} :catch_c6
    .catch Ljava/lang/IllegalAccessException; {:try_start_30 .. :try_end_c5} :catch_c6
    .catchall {:try_start_30 .. :try_end_c5} :catchall_c6

    goto :goto_c7

    :catch_c6
    :catchall_c6
    nop

    .line 176
    :cond_c7
    :goto_c7
    sget v6, Lcom/appnext/core/l;->hv:I

    if-ne v6, v7, :cond_d8

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 177
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_d8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_19

    :cond_dc
    return-object v0
.end method

.method public static d(Ljava/lang/Object;)Lorg/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 190
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 191
    :goto_6
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 192
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 193
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/appnext/core/l;->d(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2d

    .line 195
    :cond_26
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_30
    return-object v0
.end method

.method public static d(I)V
    .registers 2

    if-ltz p0, :cond_7

    const/4 v0, 0x2

    if-gt p0, v0, :cond_7

    .line 21
    sput p0, Lcom/appnext/core/l;->hv:I

    :cond_7
    return-void
.end method
