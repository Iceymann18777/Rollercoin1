.class public final Lcom/yandex/metrica/impl/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[^0-9a-zA-Z,`\u2019\\.\\+\\-\'\\s\"]"

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "\\s+"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs a([Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 60
    :cond_4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_15

    aget-object v3, p0, v2

    .line 61
    invoke-static {v3}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 84
    invoke-static {p0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 89
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_15

    return-object p0

    .line 92
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    return-object p0
.end method

.method public static final varargs b([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, ","

    .line 157
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 76
    invoke-static {p0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    return-object p0
.end method

.method public static c(Ljava/lang/String;)[B
    .registers 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 149
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method
