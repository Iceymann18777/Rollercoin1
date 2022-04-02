.class public Lcom/github/barteksc/pdfviewer/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public static calculateIndexesInDuplicateArray([I)[I
    .registers 6

    .line 46
    array-length v0, p0

    new-array v0, v0, [I

    .line 47
    array-length v1, p0

    if-nez v1, :cond_7

    return-object v0

    :cond_7
    const/4 v1, 0x0

    .line 52
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 53
    :goto_b
    array-length v3, p0

    if-ge v2, v3, :cond_1d

    .line 54
    aget v3, p0, v2

    add-int/lit8 v4, v2, -0x1

    aget v4, p0, v4

    if-eq v3, v4, :cond_18

    add-int/lit8 v1, v1, 0x1

    .line 57
    :cond_18
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    return-object v0
.end method

.method public static deleteDuplicatedPages([I)[I
    .registers 8

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_21

    aget v5, p0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 32
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v3, v6, :cond_1a

    .line 33
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_1a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 37
    :cond_21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 38
    :goto_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3c

    .line 39
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_3c
    return-object p0
.end method
