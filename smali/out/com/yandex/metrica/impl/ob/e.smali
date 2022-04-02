.class public final Lcom/yandex/metrica/impl/ob/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/yandex/metrica/impl/ob/d;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/d;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Error printing proto: "

    if-nez p0, :cond_7

    const-string p0, ""

    return-object p0

    .line 65
    :cond_7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 67
    :try_start_d
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v2, p0, v3, v1}, Lcom/yandex/metrica/impl/ob/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_15} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_15} :catch_1a

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1a
    move-exception p0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_2c
    move-exception p0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 193
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 194
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 195
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-nez v1, :cond_1a

    .line 197
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_30

    .line 198
    :cond_1a
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2d

    const/16 v3, 0x5f

    .line 199
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_30

    .line 201
    :cond_2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 204
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    if-eqz p1, :cond_14c

    .line 96
    instance-of v0, p1, Lcom/yandex/metrica/impl/ob/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_f0

    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz p0, :cond_21

    .line 99
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " <\n"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "  "

    .line 100
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2b
    if-ge v5, v4, :cond_85

    aget-object v6, v3, v5

    .line 109
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    .line 110
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    and-int/lit8 v9, v7, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_82

    and-int/lit8 v7, v7, 0x8

    const/16 v9, 0x8

    if-eq v7, v9, :cond_82

    const-string v7, "_"

    .line 112
    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_82

    invoke-virtual {v8, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_82

    .line 116
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 117
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 119
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 120
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    .line 123
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v7, v9, :cond_6a

    .line 124
    invoke-static {v8, v6, p2, p3}, Lcom/yandex/metrica/impl/ob/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    goto :goto_82

    :cond_6a
    if-nez v6, :cond_6e

    const/4 v7, 0x0

    goto :goto_72

    .line 126
    :cond_6e
    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    :goto_72
    const/4 v9, 0x0

    :goto_73
    if-ge v9, v7, :cond_82

    .line 128
    invoke-static {v6, v9}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    .line 129
    invoke-static {v8, v10, p2, p3}, Lcom/yandex/metrica/impl/ob/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_73

    .line 133
    :cond_7f
    invoke-static {v8, v6, p2, p3}, Lcom/yandex/metrica/impl/ob/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    :cond_82
    :goto_82
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 141
    :cond_85
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_8b
    if-ge v5, v4, :cond_e2

    aget-object v6, v3, v5

    .line 142
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "set"

    .line 145
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_df

    const/4 v7, 0x3

    .line 146
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 150
    :try_start_a0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "has"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7
    :try_end_b4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a0 .. :try_end_b4} :catch_df

    new-array v8, v1, [Ljava/lang/Object;

    .line 155
    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_df

    .line 161
    :try_start_c2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "get"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7
    :try_end_d6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c2 .. :try_end_d6} :catch_df

    new-array v8, v1, [Ljava/lang/Object;

    .line 166
    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7, p2, p3}, Lcom/yandex/metrica/impl/ob/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    :catch_df
    :cond_df
    add-int/lit8 v5, v5, 0x1

    goto :goto_8b

    :cond_e2
    if-eqz p0, :cond_ef

    .line 170
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 171
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p0, ">\n"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_ef
    return-void

    .line 175
    :cond_f0
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ": "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_13a

    .line 178
    check-cast p1, Ljava/lang/String;

    const-string p0, "http"

    .line 1211
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_12a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p2, 0xc8

    if-le p0, p2, :cond_12a

    .line 1213
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[...]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1215
    :cond_12a
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\""

    .line 179
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_147

    .line 180
    :cond_13a
    instance-of p0, p1, [B

    if-eqz p0, :cond_144

    .line 181
    check-cast p1, [B

    invoke-static {p1, p3}, Lcom/yandex/metrica/impl/ob/e;->a([BLjava/lang/StringBuffer;)V

    goto :goto_147

    .line 183
    :cond_144
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_147
    const-string p0, "\n"

    .line 185
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_14c
    return-void
.end method

.method private static a([BLjava/lang/StringBuffer;)V
    .registers 7

    if-nez p0, :cond_8

    const-string p0, "\"\""

    .line 240
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_8
    const/16 v0, 0x22

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 245
    :goto_f
    array-length v3, p0

    if-ge v2, v3, :cond_47

    .line 246
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_3d

    if-ne v3, v0, :cond_1d

    goto :goto_3d

    :cond_1d
    const/16 v4, 0x20

    if-lt v3, v4, :cond_2a

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_2a

    int-to-char v3, v3

    .line 250
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_44

    :cond_2a
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 252
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "\\%03o"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_44

    .line 248
    :cond_3d
    :goto_3d
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 255
    :cond_47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_3a

    .line 225
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-lt v4, v5, :cond_25

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_25

    const/16 v5, 0x22

    if-eq v4, v5, :cond_25

    const/16 v5, 0x27

    if-eq v4, v5, :cond_25

    .line 227
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_25
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 229
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "\\u%04x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 232
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
