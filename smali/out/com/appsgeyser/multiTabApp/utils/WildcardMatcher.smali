.class public Lcom/appsgeyser/multiTabApp/utils/WildcardMatcher;
.super Ljava/lang/Object;
.source "WildcardMatcher.java"


# direct methods
.method public static match(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "\\*"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_21

    aget-object v3, p1, v2

    .line 7
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_15

    return v1

    .line 11
    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_21
    const/4 p0, 0x1

    return p0
.end method
