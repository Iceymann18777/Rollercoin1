.class Lcom/onesignal/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# direct methods
.method static compareJSONArrays(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .registers 8

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_47

    if-nez p1, :cond_c

    goto :goto_47

    .line 222
    :cond_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eq v2, v3, :cond_17

    return v1

    :cond_17
    const/4 v2, 0x0

    .line 226
    :goto_18
    :try_start_18
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_42

    const/4 v3, 0x0

    .line 227
    :goto_1f
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_41

    .line 228
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/onesignal/JSONUtils;->normalizeType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 229
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/onesignal/JSONUtils;->normalizeType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 232
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_39} :catch_43

    if-eqz v4, :cond_3e

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_41
    return v1

    :cond_42
    return v0

    :catch_43
    move-exception p0

    .line 240
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_47
    :goto_47
    return v1
.end method

.method static generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-nez p1, :cond_7

    return-object p2

    .line 31
    :cond_7
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    if-eqz p2, :cond_f

    move-object v2, p2

    goto :goto_14

    .line 39
    :cond_f
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 41
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 43
    :try_start_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 44
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 46
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 47
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_5b

    .line 48
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz p2, :cond_3f

    .line 50
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 51
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    goto :goto_40

    :cond_3f
    move-object v6, v0

    .line 52
    :goto_40
    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v5, v4, v6, p3}, Lcom/onesignal/JSONUtils;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "{}"

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 55
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_14

    .line 57
    :cond_5b
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_69

    .line 58
    check-cast v4, Lorg/json/JSONArray;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v3, v4, v5, v2}, Lcom/onesignal/JSONUtils;->handleJsonArray(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    goto :goto_14

    :cond_69
    if-eqz p3, :cond_75

    .line 59
    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 60
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_14

    .line 62
    :cond_75
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 65
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_a1

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a1

    .line 66
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    move-object v7, v4

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    cmpl-double v9, v5, v7

    if-eqz v9, :cond_14

    .line 67
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_14

    .line 70
    :cond_a1
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_14

    .line 75
    :cond_a6
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_b8

    .line 76
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_14

    .line 77
    :cond_b8
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_c3

    .line 78
    check-cast v4, Lorg/json/JSONArray;

    invoke-static {v3, v4, v0, v2}, Lcom/onesignal/JSONUtils;->handleJsonArray(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    goto/16 :goto_14

    .line 80
    :cond_c3
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c6
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_c6} :catch_c8

    goto/16 :goto_14

    :catch_c8
    move-exception v3

    .line 83
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_14

    :cond_ce
    return-object v2
.end method

.method static getJSONObjectWithoutBlankValues(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    .line 134
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 137
    :cond_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 139
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 145
    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 146
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    :try_start_21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    .line 149
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 150
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_30} :catch_31

    goto :goto_15

    :catch_31
    nop

    goto :goto_15

    :cond_33
    return-object v0
.end method

.method private static handleJsonArray(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "_a"

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_97

    const-string v1, "_d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_97

    .line 96
    :cond_12
    invoke-static {p1}, Lcom/onesignal/JSONUtils;->toStringNE(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    .line 98
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 99
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    if-nez p2, :cond_24

    const/4 v5, 0x0

    goto :goto_28

    .line 100
    :cond_24
    invoke-static {p2}, Lcom/onesignal/JSONUtils;->toStringNE(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    :goto_28
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 102
    :goto_2a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_44

    .line 103
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz p2, :cond_3e

    .line 104
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_41

    .line 105
    :cond_3e
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_44
    if-eqz p2, :cond_5c

    .line 109
    :goto_46
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v6, p1, :cond_5c

    .line 110
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_59

    .line 112
    invoke-virtual {v4, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 116
    :cond_5c
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[]"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7a

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :cond_7a
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_96

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_96
    return-void

    .line 92
    :cond_97
    :goto_97
    invoke-virtual {p3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public static normalizeType(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 256
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 257
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 258
    :cond_18
    const-class v1, Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 259
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :cond_2b
    return-object p0
.end method

.method static toStringNE(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 6

    const-string v0, "\""

    const/4 v1, 0x0

    const-string v2, "["

    .line 126
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_27

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_24} :catch_27

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 130
    :catch_27
    :cond_27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
