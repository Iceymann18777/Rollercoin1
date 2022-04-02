.class public final Lcom/yandex/metrica/YandexMetrica;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static activate(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 45
    invoke-static {p1}, Lcom/yandex/metrica/e;->a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/e$a;->b()Lcom/yandex/metrica/e;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/bo;->a(Landroid/content/Context;Lcom/yandex/metrica/e;)V

    return-void
.end method

.method public static enableActivityAutoTracking(Landroid/app/Application;)V
    .registers 2

    .line 103
    invoke-static {}, Lcom/yandex/metrica/impl/bo;->c()Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/z;->a(Landroid/app/Application;)V

    return-void
.end method

.method public static getLibraryApiLevel()I
    .registers 1

    const/16 v0, 0x3a

    return v0
.end method

.method public static getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;
    .registers 2

    .line 368
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/String;)V

    .line 369
    invoke-static {p0}, Lcom/yandex/metrica/impl/bo;->a(Landroid/content/Context;)V

    .line 370
    invoke-static {}, Lcom/yandex/metrica/impl/bo;->b()Lcom/yandex/metrica/impl/bo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/bo;->a(Ljava/lang/String;)Lcom/yandex/metrica/b;

    move-result-object p0

    return-object p0
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 201
    invoke-static {}, Lcom/yandex/metrica/impl/bo;->c()Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/impl/z;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
