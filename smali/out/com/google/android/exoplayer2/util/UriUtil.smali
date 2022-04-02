.class public final Lcom/google/android/exoplayer2/util/UriUtil;
.super Ljava/lang/Object;
.source "UriUtil.java"


# direct methods
.method private static getUriIndices(Ljava/lang/String;)[I
    .registers 11

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 228
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_e

    aput v3, v0, v2

    return-object v0

    .line 235
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x23

    .line 236
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v4

    :goto_1c
    const/16 v4, 0x3f

    .line 240
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v3, :cond_26

    if-le v4, v1, :cond_27

    :cond_26
    move v4, v1

    :cond_27
    const/16 v5, 0x2f

    .line 247
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v3, :cond_31

    if-le v6, v4, :cond_32

    :cond_31
    move v6, v4

    :cond_32
    const/16 v7, 0x3a

    .line 251
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-le v7, v6, :cond_3b

    const/4 v7, -0x1

    :cond_3b
    add-int/lit8 v6, v7, 0x2

    const/4 v8, 0x1

    if-ge v6, v4, :cond_50

    add-int/lit8 v9, v7, 0x1

    .line 260
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_50

    .line 261
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_50

    const/4 v6, 0x1

    goto :goto_51

    :cond_50
    const/4 v6, 0x0

    :goto_51
    if-eqz v6, :cond_5f

    add-int/lit8 v6, v7, 0x3

    .line 264
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-eq p0, v3, :cond_5d

    if-le p0, v4, :cond_61

    :cond_5d
    move p0, v4

    goto :goto_61

    :cond_5f
    add-int/lit8 p0, v7, 0x1

    :cond_61
    :goto_61
    aput v7, v0, v2

    aput p0, v0, v8

    const/4 p0, 0x2

    aput v4, v0, p0

    const/4 p0, 0x3

    aput v1, v0, p0

    return-object v0
.end method

.method private static removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .registers 10

    if-lt p1, p2, :cond_7

    .line 177
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 179
    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_11

    add-int/lit8 p1, p1, 0x1

    :cond_11
    move v0, p1

    move v2, v0

    :goto_13
    if-gt v0, p2, :cond_60

    if-ne v0, p2, :cond_19

    move v3, v0

    goto :goto_21

    .line 190
    :cond_19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_5d

    add-int/lit8 v3, v0, 0x1

    :goto_21
    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x2e

    if-ne v0, v4, :cond_33

    .line 198
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_33

    .line 200
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sub-int/2addr v3, v2

    sub-int/2addr p2, v3

    goto :goto_5b

    :cond_33
    add-int/lit8 v6, v2, 0x2

    if-ne v0, v6, :cond_58

    .line 203
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_58

    .line 204
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_58

    add-int/lit8 v2, v2, -0x2

    const-string v0, "/"

    .line 206
    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_51

    move v2, v0

    goto :goto_52

    :cond_51
    move v2, p1

    .line 208
    :goto_52
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sub-int/2addr v3, v2

    sub-int/2addr p2, v3

    goto :goto_5a

    :cond_58
    add-int/lit8 v0, v0, 0x1

    :goto_5a
    move v2, v0

    :goto_5b
    move v0, v2

    goto :goto_13

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 217
    :cond_60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-nez p0, :cond_a

    move-object p0, v1

    :cond_a
    if-nez p1, :cond_d

    move-object p1, v1

    .line 92
    :cond_d
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x0

    .line 93
    aget v3, v1, v2

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_28

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    aget p0, v1, v6

    aget p1, v1, v5

    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 100
    :cond_28
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v7, 0x3

    .line 101
    aget v8, v1, v7

    if-nez v8, :cond_3e

    .line 104
    aget v1, v3, v7

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 107
    :cond_3e
    aget v7, v1, v5

    if-nez v7, :cond_4f

    .line 110
    aget v1, v3, v5

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 113
    :cond_4f
    aget v7, v1, v6

    if-eqz v7, :cond_67

    .line 115
    aget v3, v3, v2

    add-int/2addr v3, v6

    .line 116
    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    aget p0, v1, v6

    add-int/2addr p0, v3

    aget p1, v1, v5

    add-int/2addr v3, p1

    invoke-static {v0, p0, v3}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 120
    :cond_67
    aget v7, v1, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_85

    .line 123
    aget v4, v3, v6

    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    aget p0, v3, v6

    aget p1, v3, v6

    aget v1, v1, v5

    add-int/2addr p1, v1

    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :cond_85
    aget v7, v3, v2

    add-int/2addr v7, v5

    aget v9, v3, v6

    if-ge v7, v9, :cond_aa

    aget v7, v3, v6

    aget v9, v3, v5

    if-ne v7, v9, :cond_aa

    .line 133
    aget v4, v3, v6

    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    aget p0, v3, v6

    aget p1, v3, v6

    aget v1, v1, v5

    add-int/2addr p1, v1

    add-int/2addr p1, v6

    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 140
    :cond_aa
    aget v7, v3, v5

    sub-int/2addr v7, v6

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    if-ne v7, v4, :cond_b6

    .line 141
    aget v4, v3, v6

    goto :goto_b8

    :cond_b6
    add-int/lit8 v4, v7, 0x1

    .line 142
    :goto_b8
    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    aget p0, v3, v6

    aget p1, v1, v5

    add-int/2addr v4, p1

    invoke-static {v0, p0, v4}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    .line 74
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
