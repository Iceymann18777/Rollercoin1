.class public Lcom/yandex/metrica/impl/ob/cr;
.super Lcom/yandex/metrica/impl/ob/cq;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 1031
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1032
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1033
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1034
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    :cond_28
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
