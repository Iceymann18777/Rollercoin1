.class public Lcom/yandex/metrica/impl/ob/dh;
.super Lcom/yandex/metrica/impl/ob/dd;
.source "SourceFile"


# static fields
.field private static final c:Lcom/yandex/metrica/impl/ob/dk;


# instance fields
.field private d:Lcom/yandex/metrica/impl/ob/dk;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "PREF_KEY_OFFSET"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/dh;->c:Lcom/yandex/metrica/impl/ob/dk;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/dd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)J
    .registers 6

    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dh;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dh;->d:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dh;->d:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/dh;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dd;->k()V

    return-void
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    const-string v0, "_servertimeoffset"

    return-object v0
.end method

.method protected h()V
    .registers 4

    .line 29
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/dd;->h()V

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/dh;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dh;->d:Lcom/yandex/metrica/impl/ob/dk;

    return-void
.end method
