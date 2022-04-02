.class public Lcom/yandex/metrica/impl/ob/av;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 4

    .line 1032
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 1033
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/av;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_29

    .line 26
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/av;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/t;->a(Ljava/lang/String;)V

    :cond_29
    return v1
.end method
