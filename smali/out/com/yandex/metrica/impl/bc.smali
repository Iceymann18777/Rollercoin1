.class public Lcom/yandex/metrica/impl/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bc$a;
    }
.end annotation


# direct methods
.method public static a()Ljava/lang/String;
    .registers 1

    const-string v0, "2.73"

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yandex/metrica/impl/bc;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".7854 ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 1103
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p0}, Lcom/yandex/metrica/impl/bi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_46

    .line 1105
    :cond_2a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Lcom/yandex/metrica/impl/bi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 98
    :goto_46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; Android "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Z
    .registers 1

    const-string v0, "com.yandex.metrica.YandexMetricaInternal"

    .line 76
    invoke-static {v0}, Lcom/yandex/metrica/impl/bc;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .registers 1

    .line 29
    invoke-static {p0}, Lcom/yandex/metrica/impl/bc;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .line 90
    sget-object v0, Lcom/yandex/metrica/impl/bc$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    .line 148
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_5} :catch_9

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    const/4 v0, 0x1

    :catch_9
    :cond_9
    return v0
.end method
