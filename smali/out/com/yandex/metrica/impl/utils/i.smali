.class public Lcom/yandex/metrica/impl/utils/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;I)I
    .registers 2

    .line 12
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    return p1
.end method

.method public static a(Ljava/lang/String;J)J
    .registers 3

    .line 20
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p0

    :catch_5
    return-wide p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    .line 29
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 1

    .line 39
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method
